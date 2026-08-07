locale = {
  keywords = {
    ["conjunction·operator"] = "kaj",
    ["iteration·escape"] = "rompe",
    ["block·introducer"] = "fare",
    ["conditional·alternative"] = "alie",
    ["conditional·alternative·protasis"] = "aliese",
    ["block·terminator"] = "hop",
    ["falsity·literal"] = "falsa",
    ["iteration·introducer"] = "por",
    ["function·introducer"] = "age",
    ["dynamic·scope·declaration"] = "ĉie",
    ["unconditional·transfer"] = "ŝalte",
    ["conditional·protasis"] = "se",
    ["iteration·domain"] = "el",
    ["lexical·scope·declaration"] = "loke",
    ["null·literal"] = "neo",
    ["negation·operator"] = "ne",
    ["disjunction·operator"] = "aŭ",
    ["postcondition·iteration·introducer"] = "cikle",
    ["result·emission"] = "ren",
    ["conditional·apodosis"] = "tiam",
    ["truth·literal"] = "vera",
    ["postcondition·iteration·terminator"] = "ĝis",
    ["precondition·iteration·introducer"] = "dum",
  },

  operators = {
    ["assignment·operator"] = "iĝu",
    -- komparu kun ambaŭ
    ["equality·comparison"] = "baŭ",
    -- komparu kun la malsekvanta "baŭ"
    ["inequality·comparison"] = "zaŭ",
    ["inferior·ordering·comparison"] = "sub",
    ["superior·ordering·comparison"] = "sur",
    -- komparu kun sub, sur kaj sufloro
    ["strict·inferior·ordering"] = "suf",
    -- vidu https://tekstaro.com/?s=6a74bc78216b7 por atesto
    ["strict·superior·ordering"] = "sup",
    ["multiplication·operator"] = "oble",
    -- komparu oble kaj divi*z*oro
    ["division·operator"] = "ozle",
    -- komparu oble kaj kvociente
    ["integer·division·operator"] = "okle",
    -- komparu oble kaj *c*ikle
    ["modulo·operator"] = "ocle",
    -- komparu kun oble kaj a*gl*omer
    ["concatenation·operator"] = "ogle",
    -- komparu kun oble kaj plus
    ["addition·operator"] = "ople",
    -- komparu oble kaj subtraho
    ["subtraction·operator"] = "osle", -- ? omle
    -- kompare oble kaj ofte
    ["cardinality·operator"] = "ofle",
    -- certe otle estus eĉ pli kongrua kun la malsekvantaj, sed pli longa ol `alt`
    ["exponentiation·operator"] = "alt",

    ["variadic·expansion"] = "ktp",

    ["bitwise·conjunction"] = "kaje",
    ["bitwise·disjunction"] = "aŭe",
    ["bitwise·exclusive·disjunction"] = "disaŭe",
    ["bitwise·negation"] = "nee",
    ["ascending·significance·shift"] = "sobŝove",
    ["descending·significance·shift"] = "sorŝove",

    ["field·access·operator"] = "ie",
    ["method·invocation·operator"] = "ke",

    ["label·delimiter"] = "::",
  },

  delimiters = {
    ["expression·grouping·opening"] = "(",
    ["expression·grouping·closing"] = ")",
    ["index·opening"] = "[",
    ["index·closing"] = "]",
    ["constructor·opening"] = "{",
    ["constructor·closing"] = "}",

    -- disigiloj de sintagmoj
    ["element·separator"] = ",",
    ["statement·separator"] = ";",

    -- Propra citado demandus almenaŭ apogo de malsamaj citiloj por eka kaj fina signoj:
    -- „ ... “
    -- ‚ ... ‘
    -- Ĉi tie anstataŭ ni nur konservas alt-finaj signoj el ili, pro teknikaj limoj, sed komparu
    -- kun la signo ` kiu ankaŭ estas ofte uzata kiel citilo en programlingvoj
    -- Vidu https://lingvakritiko.com/2024/04/01/pri-la-apostrofoj-kaj-citiloj-en-esperanto/
    ["string·delimiter"] = "“",
    ["string·delimiter·alternate"] = "‘",
  },

  attributes = {
    ["immutability·attribute"] = "ĉiam",
    ["closure·attribute"] = "ferme",
  },

  types = {
    ["table·type·name"] = "tabelo",
  },

  internals = {
    ["global·table·identifier"] = "ĉiee",
    ["environment·identifier"] = "medie",
    ["implicit·self·parameter"] = "mem",
    ["locale·environment·variable"] = "LUA_LOCALE",
    ["readline·library·environment·variable"] = "LUA_READLINELIB",
    ["init·environment·variable"] = "LUA_INIT",
    ["locale·table·registry·key"] = "LUA_LOCALE_TABLE",
    ["base·locale·table·registry·key"] = "LUA_BASE_LOCALE_TABLE",
    ["plain·locale·registry·flag"] = "LUA_PLAIN_LOCALE",
    ["no·environment·registry·flag"] = "LUA_NO_ENVIRONMENT",
    -- Tio estas "kurejo aŭ veturejo", ĉar metafore estas la ejo kie oni "rulas programojn".
    -- Kompare ol klasikaj termoj kiel operaciumo aŭ mastrumsistemo aŭ mastrumilo, ĝi estas pli mallonga.
    -- Kompare ol la nativa "os", ĝi estas pli malkurta, sed en Esperanto Os/o estas Montaro en Grekio, plie
    -- -os estas finaĵo de verbo, uzata kiam oni esprimiĝas pli frue ol la aludata procezo.
    ["os·library·identifier"] = "dromo",
  },

  lexical = {
    ["eof·token"] = "<dosierfino>",
    ["number·token"] = "<nombro>",
    ["integer·token"] = "<entjero>",
    ["name·token"] = "<nomo>",
    ["string·token"] = "<ĉeno>",
  },

  repl = {
    ["primary·prompt"] = "ek!› ",
    ["continuation·prompt"] = "hej!› ",
    ["debug·prompt"] = "cimspure› ",
    ["interpreter·identity"] = "lua",
    ["usage·description"] =
      "uzo: %s [opcioj] [skripto [argumentoj]]\n" ..
      "Disponeblaj opcioj estas:\n" ..
      "  -e ordonaro  ekzekutu la ĉenon 'ordonaro'\n" ..
      "  -i           eniru interagan reĝimon post la skripto\n" ..
      "  -l modulo    postulu bibliotekon 'modulo' en la ĉiea valorujo 'modulo'\n" ..
      "  -l g=modulo  postulu bibliotekon 'modulo' en la ĉiea valorujo 'ĉiee'\n" ..
      "  -v           montru versioinformojn\n" ..
      "  -E           ignoru mediajn variablojn\n" ..
      "  -P           pura-lingvaĵo-reĝimo (sen retrodefaŭlta kromnomoj)\n" ..
      "  -W           ŝaltu avertojn\n" ..
      "  --           ĉesu trakti opciojn\n" ..
      "  -            ĉesu trakti opciojn kaj plenumi ĉefenigujo\n",
    ["version·banner"] = "Lua 5.5.1  aŭtorrajto Ⓐ 1994-2026 Lua.org, PUC-Rio",
    ["incomplete·input·marker"] = "<dosierfino>",
    ["interactive·source·identity"] = "=ĉefenigujo",
    ["commandline·source·identity"] = "=(komandlinio)",
  },

  diagnostics = {
    ["warning·prefix"] = "Lua averto: ",
    ["failed·to·load·locale·warning"] = "averto: malsukcesis ŝargi lokalon '%s'",
    ["unexpected·symbol"] = "nekonata simbolo",
    ["assignment·to·immutable"] = "provo atribui al konstanta variablo '%s'",
    ["stack·traceback·header"] = "staka spuro:",
    ["main·function·identity"] = "ĉefa funkcio",
    ["function·at·line"] = "funkcio ĉe linio %d",
    ["source·line·message"] = "%s:%d: %s",
    ["unknown·source·line·message"] = "?:?: %s",
    ["option·needs·argument"] = "'%s' bezonas argumenton\n",
    ["unrecognized·option"] = "nekonata opcio '%s'\n",
    ["error·message·not·string"] = "(erarmesaĝo ne estas signovico)",
    ["error·object·value·type"] = "(erarobjekto estas %s-valoro)",
    ["error·calling·print"] = "eraro ĉe voko de 'print' (%s)",
    ["file·error·no·extra·info"] = "(neniu plia informo)",
    ["file·error·with·path"] = "%s: %s",
    ["cannot·operation·file·with·reason"] = "ne eblas %s %s: %s",
    ["cannot·operation·file"] = "ne eblas %s %s",
    ["too·many·arguments·to·script"] = "tro multaj argumentoj al skripto",
    ["interactive·locals·crossline·warning"] =
      "averto: lokaj variabloj ne travivas trans linioj en interaga reĝimo",
    ["name·or·variadic·expansion·expected"] = "<nomo> aŭ '...' atendata",
    ["token·expected"] = "%s atendata",
    ["token·expected·to·close"] = "%s atendata (por fermi %s ĉe linio %d)",
    ["function·arguments·expected"] = "funkciaj argumentoj atendataj",
    ["lua·function·expected"] = "Lua-funkcio atendata",
    ["argument·table·expected"] = "'arg' ne estas tabelo",
    ["invalid·option"] = "nevalida opcio '%s'",
    ["invalid·option·start"] = "nevalida opcio '>'",
    ["invalid·option·generic"] = "nevalida opcio",
    ["stack·overflow·with·context"] = "stako plenplena (%s)",
    ["stack·overflow"] = "stako plenplena",
    ["not·enough·stack"] = "ne sufiĉe da stako",
    ["value·expected"] = "valoro atendata",
    ["not·enough·memory"] = "ne sufiĉe da memoro",
    ["too·many·results·to·print"] = "tro multaj rezultoj por presi",
    ["unable·to·load·readline·library"] = "ne eblas ŝargi la leglinian bibliotekon '",
    ["locale·name·too·long"] = "nomo de la lokaĵaro estas tro longa",
    ["locale·chunk·not·table"] = "lokaĵa peco ne redonis tabelon",
    ["variadic·expansion·outside·variadic·function"] =
      "ne eblas uzi '...' ekster variadika funkcio",
    ["bad·argument"] = "malbona argumento #%d (%s)",
    ["extra·argument"] = "kroma argumento",
    ["argument"] = "argumento",
    ["bad·named·argument·to"] = "malbona %s #%d al '%s' (%s)",
    ["main·chunk·identity"] = "ĉefa peco",
    ["unable·to·get·module·filename"] = "ne eblas trovi ModuloFileName",
    ["error·loading·module·from·file"] = "eraro dum ŝargado de modulo '%s' el dosiero '%s':\n\t%s",
    ["package·searchers·must·be·table"] = "'package.searchers' devas esti tabelo",
    ["module·not·found"] = "modulo '%s' ne trovita:%s",
    ["attempt·to·use·closed·file"] = "provo uzi fermitan dosieron",
    ["cannot·open·file"] = "ne eblas malfermi dosieron '%s' (%s)",
    ["default·file·is·closed"] = "defaŭlta %s dosiero estas fermita",
    ["file·already·closed"] = "dosiero jam estas fermita",
    ["unable·to·generate·unique·filename"] = "ne eblas krei unikan dosiernomon",
    ["field·missing·in·date·table"] = "kampo '%s' mankas en datotabelo",
    ["cannot·change·protected·metatable"] = "ne eblas ŝanĝi protektitan metatabelon",
    ["reader·function·must·return·string"] = "leganta funkcio devas redoni signovicon",
    ["wrong·number·of·arguments·to·insert"] = "malĝusta nombro de argumentoj al 'insert'",
    ["invalid·order·function·for·sorting"] = "nevalida ordiga funkcio por ordigado",
    ["wrong·number·of·arguments"] = "malĝusta nombro de argumentoj",
    ["missing·size·for·format·option·c"] = "mankas grandeco por formatopcio 'c'",
    ["invalid·format·option"] = "nevalida formatopcio '%s'",
    ["invalid·next·option·for·option·X"] = "nevalida sekva opcio por opcio 'X'",
    ["vararg·table·no·proper·n"] = "variadika tabelo ne havas ĝustan n",
    ["table·overflow"] = "tabelo troplena",
    ["table·index·is·nil"] = "tabela indekso estas nil",
    ["table·index·is·nan"] = "tabela indekso estas NaN",
    ["c·stack·overflow"] = "C-stako troplena",
    ["locale·table·registry·key"] = "LUA_LOCALE_TABLE",
    ["base·locale·table·registry·key"] = "LUA_BASE_LOCALE_TABLE",
    ["plain·locale·registry·flag"] = "LUA_PLAIN_LOCALE",
  },

  aliases = {
    ["os·library·identifier"] = "dromo",
    ["os·exit·method"] = "eliru",
    ["print·function·alias"] = "printu",
    ["assert·function·alias"] = "asertu",
    ["error·function·alias"] = "erarurgu",
    ["tostring·function·alias"] = "ĉenurgu",
    ["string·library·localized·name"] = "locale.esperanto.signovico",
    ["io·library·localized·name"] = "locale.esperanto.elugi",
  },
}
