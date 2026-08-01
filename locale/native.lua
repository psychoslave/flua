-- Lua 5.5 native (English) locale
-- Identifier convention: midpoint·agglutination describing the operation.

return {
  keywords = {
    ["conjunction·operator"] = "and",
    ["iteration·escape"] = "break",
    ["block·introducer"] = "do",
    ["conditional·alternative"] = "else",
    ["conditional·alternative·protasis"] = "elseif",
    ["block·terminator"] = "end",
    ["falsity·literal"] = "false",
    ["iteration·introducer"] = "for",
    ["function·introducer"] = "function",
    ["dynamic·scope·declaration"] = "global",
    ["unconditional·transfer"] = "goto",
    ["conditional·protasis"] = "if",
    ["iteration·domain"] = "in",
    ["lexical·scope·declaration"] = "local",
    ["null·literal"] = "nil",
    ["negation·operator"] = "not",
    ["disjunction·operator"] = "or",
    ["postcondition·iteration·introducer"] = "repeat",
    ["result·emission"] = "return",
    ["conditional·apodosis"] = "then",
    ["truth·literal"] = "true",
    ["postcondition·iteration·terminator"] = "until",
    ["precondition·iteration·introducer"] = "while",
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
    ["immutability·attribute"] = "const",
    ["closure·attribute"] = "close",
  },

  repl = {
    ["primary·prompt"] = "> ",
    ["continuation·prompt"] = ">> ",
    ["interpreter·identity"] = "lua",
    ["usage·description"] =
      "usage: %s [options] [script [args]]\n" ..
      "Available options are:\n" ..
      "  -e stat   execute string 'stat'\n" ..
      "  -i        enter interactive mode after executing 'script'\n" ..
      "  -l mod    require library 'mod' into global 'mod'\n" ..
      "  -l g=mod  require library 'mod' into global 'g'\n" ..
      "  -v        show version information\n" ..
      "  -E        ignore environment variables\n" ..
      "  -W        turn warnings on\n" ..
      "  --        stop handling options\n" ..
      "  -         stop handling options and execute stdin\n",
    ["incomplete·input·marker"] = "<eof>",
    ["interactive·source·identity"] = "=stdin",
    ["commandline·source·identity"] = "=(command line)",
  },

  diagnostics = {
    ["malformed·numeral"] = "malformed number",
    ["unfinished·string"] = "unfinished string",
    ["invalid·escape·sequence"] = "invalid escape sequence",
    ["hexadecimal·digit·expected"] = "hexadecimal digit expected",
    ["unfinished·long·construct"] = "unfinished long %s (starting at line %d)",
    ["invalid·long·string·delimiter"] = "invalid long string delimiter",
    ["lexical·element·overflow"] = "lexical element too long",
    ["chunk·line·overflow"] = "chunk has too many lines",
    ["token·expected"] = "%s expected",
    ["token·expected·to·close"] = "%s expected (to close %s at line %d)",
    ["generic·syntax·error"] = "syntax error",
    ["unexpected·symbol"] = "unexpected symbol",
    ["iteration·escape·outside·iteration"] = "break outside loop",
    ["assignment·to·immutable"] = "attempt to assign to const variable '%s'",
    ["global·access·violation"] = "%s is global when accessing variable '%s'",
    ["transfer·scope·violation"] = "<goto %s> at line %d jumps into the scope of '%s'",
    ["undeclared·variable"] = "variable '%s' not declared",
    ["label·undefined"] = "no visible label '%s' for <goto> at line %d",
    ["label·redefinition"] = "label '%s' already defined on line %d",
    ["stack·traceback·header"] = "stack traceback:",
    ["main·chunk·identity"] = "main chunk",
    ["execution·interrupted"] = "interrupted!",
    ["memory·exhaustion"] = "cannot create state: not enough memory",
    ["warning·prefix"] = "Lua warning: ",
    ["option·needs·argument"] = "'%s' needs argument\n",
    ["unrecognized·option"] = "unrecognized option '%s'\n",
    ["error·message·not·string"] = "(error message not a string)",
    ["error·object·value·type"] = "(error object is a %s value)",
    ["error·calling·print"] = "error calling 'print' (%s)",
    ["file·error·no·extra·info"] = "(no extra info)",
    ["file·error·with·path"] = "%s: %s",
    ["cannot·operation·file·with·reason"] = "cannot %s %s: %s",
    ["cannot·operation·file"] = "cannot %s %s",
    ["interactive·locals·crossline·warning"] =
      "warning: locals do not survive across lines in interactive mode",
    ["name·or·variadic·expansion·expected"] = "<name> or '...' expected",
    ["function·arguments·expected"] = "function arguments expected",
    ["assignment·or·iteration·domain·expected"] = "'=' or 'in' expected",
    ["control·structure·too·long"] = "control structure too long",
    ["unknown·attribute"] = "unknown attribute '%s'",
    ["multiple·to·be·closed·variables"] = "multiple to-be-closed variables in local list",
    ["global·variables·cannot·be·to·be·closed"] = "global variables cannot be to-be-closed",
    ["argument·table·expected"] = "'arg' is not a table",
    ["main·function·identity"] = "main function",
    ["function·at·line"] = "function at line %d",
    ["too·many·elements·in·scope"] = "too many %s (limit is %d) in %s",
    ["variadic·expansion·outside·variadic·function"] =
      "cannot use '...' outside a vararg function",
    ["missing·opening·brace"] = "missing '{'",
    ["missing·closing·brace"] = "missing '}'",
    ["utf8·value·too·large"] = "UTF-8 value too large",
    ["decimal·escape·too·large"] = "decimal escape too large",
  },

  internals = {
    ["environment·identifier"] = "_ENV",
    ["implicit·self·parameter"] = "self",
  },
}
