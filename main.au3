#include <funcoes.au3>
#include <mapas.au3>
#include <acoes.au3>

Global $AutoAtacar = "{b}"
Global $TeclaTeleporte = "{8}"
Global $TeclaUlt = "{r}"
Global $TeclaDash = "{LSHIFT}"
;Global $Mapas = [CaminhoCeuSuperior_Elite_B2, LabirintoCaminhoParaCeu_3F_B2]
Global $Mapas = [LabirintoCaminhoParaCeu_3F_B5]
;==========================
Global $tela = "Mir4G[1]"
Global $rodando
Global $qtdv=0 ; quantidade de voltas
Global $qtdm=0 ;quantidade de mortes
Global $x0
Global $x1
Global $y0
Global $y1
Global $yd
Global $xd
Global $tx
Global $ty
HotKeySet("{NUMPADDIV}", "InimigoProximo2")
HotKeySet("{NUMPADADD}", "Encontrar_Valores")
HotKeySet("{NUMPADMULT}", "_restart")
hotkeyset("{pause}","pause")
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
$x1 = $x0 +  $xd - ($borderSize * 2)
$y1 = $y0 +  $cSize[1]
msg("Aguardando....")


pause()


Func teste()
   $StartSec = @Sec - 1
   While 1
	;ConsoleWrite($StartSec & @CRLF)
   If $StartSec <= 0 Then $StartSec = 1 EndIf
   ConsoleWrite($StartSec & " | " & @Sec & @CRLF)
   If @Sec == $StartSec Then
		 msg("Falhou na confirmação.........")
		 ExitLoop
	  EndIf
WEnd
EndFunc

While 1
   $qtdv = $qtdv + 1
   $t = Ubound($Mapas)-1
   $Mapas[Random(0, $t, 1)]()
   Aguardar()
   $inimigo = InimigoProximo()
   if $inimigo == 1 Then
	  Fugir()
	  Aguardar()
	  Sleep(random(60000,120000,1))
   Else
	  Atacar()
	  $inimigo = 0
	 ; enconomiaEnergia()
	  msg("Up Ativado....")
	  While $inimigo = 0
		 ;$inimigo = SaiuEcononomiaEnergia()
		 $inimigo = InimigoProximo()
		 Sleep(100)
	  WEnd
	  Fugir()
	  Aguardar()
	  msg("Aguardando na Cidade....")
	  Sleep(random(60000,120000,1))
   EndIf
WEnd



