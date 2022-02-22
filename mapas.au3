Func AbrirMapas()
   $x = porcentagem($xd, $x0, 86)
   $y = porcentagem($yd, $y0, 12.5)
   MouseClicar($x, $y)
EndFunc

Func MapaDoMundo()
   $x = porcentagem($xd, $x0, 7)
   $y = porcentagem($yd, $y0, 3.5)
   MouseClicar($x, $y)
EndFunc

Func Mapa1()
   $x = porcentagem($xd, $x0, 7.5)
   $y = porcentagem($yd, $y0, 11)
   MouseClicar($x, $y)
EndFunc

Func Mapa2()
   $x = porcentagem($xd, $x0, 21.5)
   $y = porcentagem($yd, $y0, 11)
   MouseClicar($x, $y)
EndFunc

Func Mapa3()
   $x = porcentagem($xd, $x0, 35)
   $y = porcentagem($yd, $y0, 11)
   MouseClicar($x, $y)
EndFunc

Func Mapa4()
   $x = porcentagem($xd, $x0, 47)
   $y = porcentagem($yd, $y0, 11)
   MouseClicar($x, $y)
EndFunc

Func Elite();Seleciona o Mapa Elite
   $x = porcentagem($xd, $x0, 93.5)
   $y = porcentagem($yd, $y0, 19.5)
   MouseClicar($x, $y)
EndFunc

;===========================================================
Func AreaDoCentroEspiritual();
   $x = porcentagem($xd, $x0, 15.7)
   $y = porcentagem($yd, $y0, 32.7)
   MouseClicar($x, $y)
EndFunc
;-------------------------------------------------
Func LabirintoCaminhoParaCeu()
   $x = porcentagem($xd, $x0, 12.34)
   $y = porcentagem($yd, $y0, 48.4)
   MouseClicar($x, $y)
EndFunc

Func LabirintoCaminhoParaCeu_3F_B1()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = porcentagem($xd, $x0, 90)
   $y = porcentagem($yd, $y0, 42.5)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B2()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = porcentagem($xd, $x0, 90)
   $y = porcentagem($yd, $y0, 48.5)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B3()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = porcentagem($xd, $x0, 90)
   $y = porcentagem($yd, $y0, 55.5)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B4()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = porcentagem($xd, $x0, 90)
   $y = porcentagem($yd, $y0, 62)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B5()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = porcentagem($xd, $x0, 90)
   $y = porcentagem($yd, $y0, 69)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
EndFunc

;-------------------------------------------------
Func PicoDoCaminhoParaCeu()
   $x = porcentagem($xd, $x0, 19.7)
   $y = porcentagem($yd, $y0, 22.6)
   MouseClicar($x, $y)
EndFunc
Func CaminhoCeuSuperior_Elite_B2()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   PicoDoCaminhoParaCeu()
   Mapa3()
   Elite()
   $x = porcentagem($xd, $x0, 90)
   $y = porcentagem($yd, $y0, 41)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
EndFunc

;===========================================================











