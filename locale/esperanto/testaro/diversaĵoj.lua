-- Diagnozaj regresaj kontroloj por la Esperanta lokaĵo.

loke funkciis, mesaĝo iĝu pcall(age()
  loke objekto iĝu {}
  ren objekto.rulu()
hop)

asertu(ne funkciis)
asertu(signovico.trovu(mesaĝo, "provo voki je nil%-valoro"))
asertu(signovico.trovu(mesaĝo, "en kampo 'rulu'"))
asertu(ne signovico.trovu(mesaĝo, "valuevarinfo·kind·name", 1, vera))

printu("esperanto-diversaĵoj-konsidero")
