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
   $x = pX(49.5)
   $y = pY(81.65)
		$cor = Hex(PixelGetColor($x, $y),6)
		ConsoleWrite($cor & @CRLF)
;~    WEnd

EndFunc

Func pX($deslocamento)
   $retorno = $x0 + ($xd * ($deslocamento / 100))
   Return $retorno
EndFunc

Func pY($deslocamento)
   $retorno = $y0 + ($yd * ($deslocamento / 100))
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
   ;ConsoleWrite("ultima mensage=" & $ultimaMsg & " mensagem atual:" & $mensagem & @CRLF)
   If $ultimaMsg <> $mensagem Then
   Tooltip("VOLTAS:" & $qtdv & " | MORTES:" & $qtdm & " | "& $mensagem, $tx, $ty)
   ConsoleWrite(_NowTime() & " VOLTAS:" & $qtdv & " | MORTES:" & $qtdm & " | "& $mensagem & @CRLF)
   $ultimaMsg = $mensagem
   EndIf
EndFunc

Func Mouseclicar($x, $y)
   MouseClick("left", random(($x-2), ($x+2),1), random(($y-2), ($y+2),1))
   Sleep(random(300,800))
EndFunc

Func CalculaPorcentagem()
   $x = $x0
   $y = pY(89.1)
   $cor = Hex(PixelGetColor($x, $y), 6)
   While $cor == '00F2FF'
	  $x = $x + 1
	  $cor = Hex(PixelGetColor($x, $y), 6)
   WEnd
   ConsoleWrite("XP: " & round((($x - $x0)*100) / $xd, 2) & @CRLF)
   return round((($x - $x0)*100) / $xd, 2)
EndFunc


Func DetectarMorte()
   $morreu = 0
   Local $aCoord = PixelSearch(pX(1), pY(1.5), pX(2), pY(3), 0xB5AE8A, 60);lvl aparecendo
   If @error Then
	  msg("iiiii acho que pode ter morrido...")
	  $morreu = 1
   EndIf
return $morreu
EndFunc


Func InimigosAlvos()
   Send($Alvos)
   Sleep(300)
   $x = pX(96.25)
   $y = pY(26.06))
   $cor = Hex(PixelGetColor($x , $y, 6)
   If $cor <> 'F30523' Then
	  MouseClicar($x, $y)
   EndIf
;76.56	17.29
;92.66	38.83
EndFunc

Func TeleporteSlot3()
  ; 564C43

EndFunc




