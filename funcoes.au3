Func Sair()
    Exit
 EndFunc

Func _restart()
    ShellExecute("main.au3")
    Exit
EndFunc

 Func Encontrar_Valores()
   While 1
        $aMouse = MouseGetPos()
		$xp = (($aMouse[0]-$x0)*100)/$xd
		$yp = (($aMouse[1]-$y0)*100)/$yd
        ToolTip("x = " & round($xp, 2) & "  y = " & round($yp, 2))
   WEnd
   $retorno = $original + ($tamanho * ($deslocamento / 100))
EndFunc

 Func Encontrar_Cor()
   $x = porcentagem($xd, $x0, 5)
   $y = porcentagem($yd, $y0, 89.1)
		$cor = Hex(PixelGetColor($x, $y),6)
		ConsoleWrite($cor & @CRLF)
  ; WEnd

EndFunc

Func porcentagem($tamanho, $origem, $deslocamento)
   $retorno = $origem + ($tamanho * ($deslocamento / 100))
   Return $retorno
EndFunc

Func Pause()
if Not IsDeclared("pause") Then global $pause=1
$pause=Not $pause
if Not $pause Then
   msg("Pausado...")
Else
   msg("Ativado...")
EndIf
while Not $pause
   sleep(10)
Wend
EndFunc

Func Restart()
   main()
EndFunc

Func msg($mensagem)
   Tooltip("VOLTAS:" & $qtdv & " | MORTES:" & $qtdm & " | "& $mensagem, $tx, $ty)
   ConsoleWrite(_NowTime() & " VOLTAS:" & $qtdv & " | MORTES:" & $qtdm & " | "& $mensagem & @CRLF)
EndFunc

Func Mouseclicar($x, $y)
   MouseClick("left", random(($x-2), ($x+2),1), random(($y-2), ($y+2),1))
   Sleep(random(300,800))
EndFunc

Func CalculaPorcentagem()
   $x = $x0
   $y = porcentagem($yd, $y0, 89.1)
   $cor = Hex(PixelGetColor($x, $y), 6)
   While $cor == '00F2FF'
	  $x = $x + 1
	  $cor = Hex(PixelGetColor($x, $y), 6)
   WEnd
   return round((($x - $x0)*100) / $xd, 2)
EndFunc


Func DetectarMorte()
   $morreu = 0
   Local $aCoord = PixelSearch(porcentagem($xd, $x0, 1), porcentagem($yd, $y0, 1.5), porcentagem($xd, $x0, 2), porcentagem($yd, $y0, 3), 0xB5AE8A, 60);lvl aparecendo
   If @error Then
	  msg("Iiiii morreu...")
	  $morreu = 1
   EndIf
return $morreu
EndFunc









