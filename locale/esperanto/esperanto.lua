locale = {
  keywords = {
    ["conjunction·operator"] = "kaj",
    ["iteration·escape"] = "rompu",
    ["block·introducer"] = "faru",
    ["conditional·alternative"] = "alie",
    ["conditional·alternative·protasis"] = "aliese",
    ["block·terminator"] = "fino",
    ["falsity·literal"] = "malvera",
    ["iteration·introducer"] = "por",
    ["function·introducer"] = "funkcio",
    ["dynamic·scope·declaration"] = "tutmonda",
    ["unconditional·transfer"] = "salto",
    ["conditional·protasis"] = "se",
    ["iteration·domain"] = "en",
    ["lexical·scope·declaration"] = "loka",
    ["null·literal"] = "nulo",
    ["negation·operator"] = "ne",
    ["disjunction·operator"] = "aŭ",
    ["postcondition·iteration·introducer"] = "ripetu",
    ["result·emission"] = "redonu",
    ["conditional·apodosis"] = "tiam",
    ["truth·literal"] = "vera",
    ["postcondition·iteration·terminator"] = "ĝis",
    ["precondition·iteration·introducer"] = "dum",
  },

  operators = {
    ["assignment·operator"] = "=",
    ["equality·comparison"] = "==",
    ["inequality·comparison"] = "~=",
    ["inferior·ordering·comparison"] = "<=",
    ["superior·ordering·comparison"] = ">=",
    ["strict·inferior·ordering"] = "<",
    ["strict·superior·ordering"] = ">",
    ["addition·operator"] = "+",
    ["subtraction·operator"] = "-",
    ["multiplication·operator"] = "*",
    ["division·operator"] = "/",
    ["integer·division·operator"] = "//",
    ["modulo·operator"] = "%",
    ["exponentiation·operator"] = "^",
    ["concatenation·operator"] = "..",
    ["variadic·expansion"] = "...",
    ["cardinality·operator"] = "#",
    ["bitwise·conjunction"] = "&",
    ["bitwise·disjunction"] = "|",
    ["bitwise·exclusive·disjunction"] = "~",
    ["bitwise·negation"] = "~",
    ["ascending·significance·shift"] = "<<",
    ["descending·significance·shift"] = ">>",
    ["field·access·operator"] = ".",
    ["method·invocation·operator"] = ":",
    ["label·delimiter"] = "::",
  },

  delimiters = {
    ["expression·grouping·opening"] = "(",
    ["expression·grouping·closing"] = ")",
    ["index·opening"] = "[",
    ["index·closing"] = "]",
    ["constructor·opening"] = "{",
    ["constructor·closing"] = "}",
    ["element·separator"] = ",",
    ["statement·separator"] = ";",
    ["string·delimiter"] = "\"",
    ["string·delimiter·alternate"] = "'",
  },

  attributes = {
    ["immutability·attribute"] = "konst",
    ["closure·attribute"] = "fermu",
  },

  types = {
    ["table·type·name"] = "tabelo",
  },

  lexical = {
    ["eof·token"] = "<fino>",
    ["number·token"] = "<nombro>",
    ["integer·token"] = "<entjero>",
    ["name·token"] = "<nomo>",
    ["string·token"] = "<ĉeno>",
  },

  repl = {
    ["primary·prompt"] = "› ",
    ["continuation·prompt"] = "⋯› ",
    ["debug·prompt"] = "eo> ",
    ["interpreter·identity"] = "lua",
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
    ["version·banner"] = "Lua 5.5.1  Copyright (C) 1994-2026 Lua.org, PUC-Rio",
    ["incomplete·input·marker"] = "<fino>",
    ["interactive·source·identity"] = "=stdin",
    ["commandline·source·identity"] = "=(komandlinio)",
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
