-- Diagnozaj regresaj kontroloj por la Esperanta lokaĵo.

-- Testu buleaj valoroj
asertu(ĉenurgu(vera) baŭ "vera")
asertu(ĉenurgu(falsa) baŭ "falsa")

-- Testu spuro de eraro (en / in)
loke funkciis, mesaĝo iĝu pcall(age()
  loke objekto iĝu {}
  ren objekto.rulu()
hop)

asertu(ne funkciis)
asertu(signovico.trovu(mesaĝo, "provo voki je nil%-valoro"))
asertu(signovico.trovu(mesaĝo, "en kampo 'rulu'"))
-- Asertu ke ni ne havas anglan "in"
asertu(ne signovico.trovu(mesaĝo, " in ", 1, vera))
asertu(ne signovico.trovu(mesaĝo, "valuevarinfo·kind·name", 1, vera))

-- Testu eneligo biblioteko
asertu(ne (eneligo baŭ neo))

printu("esperanto-diversaĵoj-konsidero")
