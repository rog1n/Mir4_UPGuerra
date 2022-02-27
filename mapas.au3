Func AbrirMapas()
   $x = pX( 86)
   $y = pY(12.5)
   MouseClicar($x, $y)
EndFunc

Func MapaDoMundo()
   $x = pX(7)
   $y = pY(3.5)
   MouseClicar($x, $y)
EndFunc

Func Mapa1()
   $x = pX(7.5)
   $y = pY(11)
   MouseClicar($x, $y)
EndFunc

Func Mapa2()
   $x = pX(21.5)
   $y = pY(11)
   MouseClicar($x, $y)
EndFunc

Func Mapa3()
   $x = pX(35)
   $y = pY(11)
   MouseClicar($x, $y)
EndFunc

Func Mapa4()
   $x = pX(47)
   $y = pY(11)
   MouseClicar($x, $y)
EndFunc

Func Elite();Seleciona o Mapa Elite
   $x = pX(93.5)
   $y = pY(19.5)
   MouseClicar($x, $y)
EndFunc

;======================MAPAS=====================================
Func AreaDoCentroEspiritual();
   $x = pX(15.7)
   $y = pY(32.7)
   MouseClicar($x, $y)
EndFunc
;-------------------------------------------------
Func LabirintoCaminhoParaCeu()
   $x = pX(12.34)
   $y = pY(48.4)
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
   $x = pX(90)
   $y = pY(42.5)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
   Aguardar()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B2()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = pX(90)
   $y = pY(48.5)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
   Aguardar()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B3()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = pX(90)
   $y = pY(55.5)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
   Aguardar()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B4()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x = pX(90)
   $y = pY(62)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
   Aguardar()
EndFunc

Func LabirintoCaminhoParaCeu_3F_B5()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   LabirintoCaminhoParaCeu()
   Mapa3()
   $x =pX(90)
   $y = pY(69)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
   Aguardar()
EndFunc

;-------------------------------------------------
Func PicoDoCaminhoParaCeu()
   $x = pX(19.7)
   $y = pY(22.6)
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
   $x = pX(90)
   $y = pY(41)
   MouseClicar($x, $y) ;Boss 2
   DeslocamentoRapido()
   Aguardar()
EndFunc


;####
Func CaminhoCeuSuperior_Elite_1()
   msg("Movendo Para o Mapa")
   LimpaTela()
   AbrirMapas()
   MapaDoMundo()
   AreaDoCentroEspiritual()
   PicoDoCaminhoParaCeu()
   Mapa3()
   Elite()
   $x = pX(33.5)
   $y = pY(25.5)
   MouseClicar($x, $y)
   Sleep(5)
   MouseClicar($x, $y)
   EntrarAgora()
   DeslocamentoRapidoTela()
   Aguardar()
   Sleep(70000)
EndFunc
;###
;================================================================











