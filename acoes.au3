
Func InimigoProximo()
   ;msg("procurando inimigos.........")
   Local $aCoord = PixelSearch(porcentagem($xd, $x0, 7), porcentagem($yd, $y0, 15), porcentagem($xd, $x0, 10), porcentagem($yd, $y0, 35), 0xC30507, 20);procura o vermelho
   If Not @error Then
   ;If  @error Then
	  Local $aCoord[2]
	  ;$aCoord[0] = 2611
	  ;$aCoord[1] = 101
	  $retorno = 1
	  $xp = (($aCoord[0]-$x0)*100)/$xd
	  $yp = (($aCoord[1]-$y0)*100)/$yd
	  Switch $yp
		 Case   15 to 19.5
			ConsoleWrite("Primeira linha" & @CRLF)
			Local $aCoord2 = PixelSearch(porcentagem($xd, $x0, 4), porcentagem($yd, $y0, 16), porcentagem($xd, $x0, 7),porcentagem($yd, $y0, 21), 748897, 60)
			 If Not @error Then
				$retorno = 1
				msg("Inimigo Encontrando")
			EndIf
		 Case   22 to 24.5
			ConsoleWrite("Segunda linha" & @CRLF)
			Local $aCoord2 = PixelSearch(porcentagem($xd, $x0, 4), porcentagem($yd, $y0, 21), porcentagem($xd, $x0, 7),porcentagem($yd, $y0, 26.5), 748897, 60)
			 If Not @error Then
				$retorno = 1
				msg("Inimigo Encontrando")
			EndIf
		 Case   27.5 to 30
			ConsoleWrite("Terceira linha" & @CRLF)
			Local $aCoord2 = PixelSearch(porcentagem($xd, $x0, 4), porcentagem($yd, $y0, 26.5), porcentagem($xd, $x0, 7),porcentagem($yd, $y0, 32), 748897, 60)
			 If Not @error Then
				$retorno = 1
				msg("Inimigo Encontrando")
			EndIf
		 Case   33 to 35.5
			ConsoleWrite("Quarta linha" & @CRLF)
			Local $aCoord2 = PixelSearch(porcentagem($xd, $x0, 4), porcentagem($yd, $y0, 32), porcentagem($xd, $x0, 7),porcentagem($yd, $y0,36.5), 748897, 60)
			 If Not @error Then
				$retorno = 1
				msg("Inimigo Encontrando")
			EndIf
		 Case Else
			Msg("Alarme Falso - Inimigo não encontrado")
			$retorno = 0
	  EndSwitch
   Else
	  $retorno = 0
	  ;msg("INIMIGOS NÃO ENCONTRADOS")
   EndIf
   return $retorno
EndFunc

Func SaiuEcononomiaEnergia()
   $cor = Hex(PixelGetColor(porcentagem($xd, $x0, 5), porcentagem($yd, $y0, 20)),6)
		      If $cor = 000000 Then
				 $achou = 0
			     Sleep(200)
			  Else
				 $achou  = 1
              EndIf
			  Return $achou
EndFunc

Func Fugir()
   WinActivate($tela)
   msg("Tentando Fugir.........")
   $teleportou = 0
   $StartSec = TimerInit()
   While $teleportou = 0
	  Send ($TeclaDash)
	  Sleep(random(600,800,1))
	  Send ($TeclaUlt)
	  Sleep(random(600,800,1))
	  Send($TeclaTeleporte)
	  Sleep(random(1500,2000,1))
	  Local $aCoord = PixelSearch(porcentagem($xd, $x0, 10), porcentagem($yd, $y0, 83), porcentagem($xd, $x0, 13), porcentagem($yd, $y0, 87), 0x1A65BA, 10);carregamento loadscreen
	  If Not @error Then
		 $teleportou = 1
		  msg("Fugiu.........")
		 ExitLoop
	  EndIf
	  If TimerDiff($StartSec) > 40000 Then
		 msg("Falhou na confirmação.........")
		 ExitLoop
	  EndIf
   WEnd
   return $teleportou
EndFunc

Func Aguardar()
   WinActivate($tela)
   $StartSec = TimerInit()
   $saiu = 2
   While $saiu = 2
   Local $aCoord = PixelSearch(porcentagem($xd, $x0, 10), porcentagem($yd, $y0, 83), porcentagem($xd, $x0, 13), porcentagem($yd, $y0, 87), 0x1A65BA, 10);carregamento loadscreen
   If Not @error Then
	  msg("Loadscreen Encontrada....")
	  sleep(50)
	  $saiu = 0
   EndIf
   If TimerDiff($StartSec) > 40000 Then
      ExitLoop
	  $saiu = 0
   EndIf
   WEnd
    $StartSec = TimerInit()
   While $saiu = 0
   Local $aCoord = PixelSearch(porcentagem($xd, $x0, 10), porcentagem($yd, $y0, 83), porcentagem($xd, $x0, 13), porcentagem($yd, $y0, 87), 0x1A65BA, 10);carregamento loadscreen
   If @error Then
	  msg("Saiu da Loadscreen....")
	  sleep(1500)
	  $saiu = 1
   EndIf
   If TimerDiff($StartSec) > 40000 Then
      ExitLoop
   EndIf
WEnd
return  $saiu
EndFunc

Func LimpaTela()
   WinActivate($tela)
   send("{ESC}")
EndFunc

Func enconomiaEnergia()
	  LimpaTela()
	  $x = porcentagem($xd, $x0, 94.5)
	  $y = porcentagem($yd, $y0, 4)
	  MouseClicar($x, $y)
	  Sleep(random(800,1500,1))
	  $x = porcentagem($xd, $x0, 11)
	  $y = porcentagem($yd, $y0, 66.5)
	  MouseClicar($x, $y)
	  Sleep(random(2000,3000,1))
   EndFunc

Func Atacar()
   send($AutoAtacar)
   msg("Auto Atacar Ativado...")
EndFunc

Func DeslocamentoRapido()
   $x = porcentagem($xd, $x0, 80)
   $y = porcentagem($yd, $y0, 84)
   MouseClicar($x, $y)
EndFunc

Func DeslocamentoRapidoTela()
   $x = porcentagem($xd, $x0, 53.5)
   $y = porcentagem($yd, $y0, 66)
   MouseClicar($x, $y)
EndFunc

Func EntrarAgora()
   $x = porcentagem($xd, $x0, 73.71)
   $y = porcentagem($yd, $y0, 51)
   MouseClicar($x, $y)
EndFunc







