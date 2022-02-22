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
   ;While 1
        $x = porcentagem($xd, $x0, 4)
		$x2 = porcentagem($xd, $x0, 8)
		$y = porcentagem($yd, $y0, 15)
		$y2 = porcentagem($yd, $y0, 22)
		$returnX = 0
		$returnY = 0
		local $search = _ImageSearch('cruz.png', 1, $x, $y, 0, 0)
		ConsoleWrite("o search retorna= " & $search & @CRLF)
   If $search = 1 Then
   MouseMove($returnx, $returny, 10)
   EndIf
		;;$cor = Hex(PixelGetColor($x, $y),6)
		;ConsoleWrite($cor & @CRLF)
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
   ConsoleWrite("VOLTAS:" & $qtdv & " | MORTES:" & $qtdm & " | "& $mensagem & @CRLF)
EndFunc

Func Mouseclicar($x, $y)
   MouseClick("left", random(($x-2), ($x+2),1), random(($y-2), ($y+2),1))
   Sleep(random(300,800))
EndFunc












