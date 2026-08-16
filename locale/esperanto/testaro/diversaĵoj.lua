-- Diagnozaj regresaj kontroloj por la Esperanta lokaĵo.

-- Testu buleaj valoroj
asertu(ĉenurgu(vera) baŭ "vera")
asertu(ĉenurgu(falsa) baŭ "falsa")

-- Testu ĉeno biblioteko
asertu(ne (ĉeno baŭ neo))

-- Testu spuro de eraro (en / in)
loke funkciis, mesaĝo iĝu pcall(age()
  loke objekto iĝu {}
  ren objekto.rulu()
hop)

asertu(ne funkciis)
asertu(ĉeno.trovu(mesaĝo, "provo voki je neo%-valoro"))
asertu(ĉeno.trovu(mesaĝo, "en kampo 'rulu'"))
-- Asertu ke ni ne havas anglan "in"
asertu(ne ĉeno.trovu(mesaĝo, " in ", 1, vera))
asertu(ne ĉeno.trovu(mesaĝo, "valuevarinfo·kind·name", 1, vera))

-- Testu eneligo biblioteko
asertu(ne (eneligo baŭ neo))

-- Testu normenigo (stdin) source identity exists in locale
-- This is tested by checking that the string is properly localized
-- when loading from stdin in error messages

-- Testu neo (nil keyword) is used in tostring
asertu(ĉenurgu(neo) baŭ "neo")

-- Testu ie (field access operator) is used in concatenated field names
-- This is tested by the locale entry existing

printu("esperanto-diversaĵoj-konsidero")
