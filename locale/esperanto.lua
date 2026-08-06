return {
  repl = {
    ["primary·prompt"] = "› ",
    ["continuation·prompt"] = "⋯› ",
    ["debug·prompt"] = "eo> ",
    ["usage·description"] =
      "uzo: %s [opcioj] [skripto [argumentoj]]\n" ..
      "Disponeblaj opcioj estas:\n" ..
      "  -e stato  ekzekutu la ĉenon 'stato'\n" ..
      "  -i        eniru interagan reĝimon post la skripto\n" ..
      "  -l mod    postulu bibliotekon 'mod' en la tutmonda 'mod'\n" ..
      "  -l g=mod  postulu bibliotekon 'mod' en la tutmonda 'g'\n" ..
      "  -v        montru versiinformojn\n" ..
      "  -E        ignoru ĉirkaŭaĵajn variablojn\n" ..
      "  -P        ⟪plain locale mode⟫ (sen bazaj rezerv-aliaseoj)\n" ..
      "  -W        ŝaltu avertojn\n" ..
      "  --        ĉesu trakti opciojn\n" ..
      "  -         ĉesu trakti opciojn kaj ekzekutu stdin\n",
  },

  diagnostics = {
    ["warning·prefix"] = "Lua averto: ",
    ["failed·to·load·locale·warning"] = "averto: malsukcesis ŝargi lokalon '%s'",
    ["option·needs·argument"] = "'%s' bezonas argumenton\n",
    ["unrecognized·option"] = "nekonata opcio '%s'\n",
    ["error·message·not·string"] = "(erarmesaĝo ne estas signovico)",
    ["error·object·value·type"] = "(erarobjekto estas %s-valoro)",
    ["error·calling·print"] = "eraro ĉe voko de 'print' (%s)",
    ["file·error·no·extra·info"] = "(neniu plia informo)",
    ["file·error·with·path"] = "%s: %s",
    ["cannot·operation·file·with·reason"] = "ne eblas %s %s: %s",
    ["cannot·operation·file"] = "ne eblas %s %s",
    ["interactive·locals·crossline·warning"] =
      "averto: lokaj variabloj ne travivas trans linioj en interaga reĝimo",
    ["function·arguments·expected"] = "funkciaj argumentoj atendataj",
    ["lua·function·expected"] = "Lua-funkcio atendata",
    ["argument·table·expected"] = "'arg' ne estas tabelo",
    ["invalid·option"] = "nevalida opcio '%s'",
    ["stack·overflow·with·context"] = "stako plenplena (%s)",
    ["stack·overflow"] = "stako plenplena",
    ["value·expected"] = "valoro atendata",
    ["not·enough·memory"] = "ne sufiĉe da memoro",
    ["too·many·results·to·print"] = "tro multaj rezultoj por presi",
    ["unable·to·load·readline·library"] = "ne eblas ŝargi la leglinian bibliotekon '",
    ["locale·name·too·long"] = "nomo de la lokaĵaro estas tro longa",
    ["locale·chunk·not·table"] = "lokaĵa peco ne redonis tabelon",
  },
}
