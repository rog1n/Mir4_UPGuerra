#include <funcoes.au3>
#include <mapas.au3>
#include <acoes.au3>
#include <Date.au3>


Global $AutoAtacar = "{b}"
Global $Alvos = "{TAB}"
Global $TeclaTeleporte = "{8}"
Global $TeclaUlt = "{r}"
Global $TeclaDash = "{LSHIFT}"
;Global $Mapas = [CaminhoCeuSuperior_Elite_B2, LabirintoCaminhoParaCeu_3F_B2, LabirintoCaminhoParaCeu_3F_B3]
Global $Mapas = [CaminhoCeuSuperior_Elite_B2, LabirintoCaminhoParaCeu_3F_B1, LabirintoCaminhoParaCeu_3F_B2, LabirintoCaminhoParaCeu_3F_B3, LabirintoCaminhoParaCeu_3F_B4, LabirintoCaminhoParaCeu_3F_B5]
;==========================
Global $tela = "Mir4G[1]"
Global $rodando
Global $qtdv=-1 ; quantidade de voltas
Global $qtdm=0 ;quantidade de mortes
Global $x0
Global $x1
Global $y0
Global $y1
Global $yd
Global $xd
Global $tx
Global $ty
Global $msglog
Global $msglogOld = 5
Global $porcentagemInicial
Global $ultimaMsg = ""

HotKeySet("{NUMPADDIV}", "teste")
HotKeySet("{NUMPADADD}", "Encontrar_Valores")
HotKeySet("{NUMPADSUB}", "Encontrar_Cor")
HotKeySet("{NUMPADMULT}", "_restart")
HotKeySet("{pause}","pause")
HotKeySet("{end}", "sair")
$cSize = WinGetClientSize($tela)
$winsize = WinGetPos($tela)
WinMove($tela, "", $winsize[0], $winsize[1], 640,376)
Msg("Tela Ajustada")
$cSize = WinGetClientSize($tela)
$winsize = WinGetPos($tela)
$borderSize = ($winsize[2] - $cSize[0]) / 2
$captionSize = ($winsize[3] - $cSize[1]) - $borderSize
$xd = $winsize[2]
$yd = $winsize[3]
$tx = $winsize[0]
$ty = $winsize[1]
$x0 = $winsize[0] + $borderSize
$y0 = $winsize[1] + $captionSize
$porcentagemInicial = CalculaPorcentagem()
pause()


Func teste()
   $cor = Hex(PixelGetColor(pX(48.91),pY(81.12)),6)
   If $cor == '294586' Then
	  ConsoleWrite("achou" & @CRLF)
   Else
	  ConsoleWrite($cor & @CRLF)
   EndIf
EndFunc

While 1
	While DetectarMorte() = 1
	  Sleep(100)
	WEnd
	  ConsoleWrite("Inicial: " & $porcentagemInicial & " | Atual: " & CalculaPorcentagem() & @CRLF)
   If  CalculaPorcentagem() < $porcentagemInicial Then
	  Msg("Morreu :|")
	  $qtdm = $qtdm + 1
	  $porcentagemInicial = CalculaPorcentagem()
	  If $qtdm = 2 Then
		 Exit
	  EndIf
   EndIf
   $qtdv = $qtdv + 1
   $t = Ubound($Mapas)-1
   $Mapas[Random(0, $t, 1)]()
   $inimigo = InimigoProximo()
   if $inimigo == 1 Then
	  Fugir()
	  Aguardar()
	  Sleep(random(60000,120000,1))
   Else
	  Atacar()
	  $inimigo = 0
	  $morte = 0
	 ; enconomiaEnergia()
	  While $inimigo = 0 and $morte = 0
		 		 ;$inimigo = SaiuEcononomiaEnergia()
		 $inimigo = InimigoProximo()
		 ;ConsoleWrite("inimigo=" & $morte & @CRLF)
		 If $msglog <> $msglogOld Then
			$msglogOld = $msglog
		 EndIf
		 msg("Upando....")
		 $morte = DetectarMorte()
		 ;ConsoleWrite("morte=" & $morte & @CRLF)
		 Sleep(100)
	  WEnd
	  Fugir()
	  Aguardar()
	  msg("Aguardando na Cidade....")
	  if $morte == 1 Then
		 Sleep(random(180000,240000,1))
	  Else
		 Sleep(random(60000,120000,1))
	  EndIf
   EndIf
WEnd



