-- Lua 5.5 native (English) locale
-- Identifier convention: midpoint·agglutination describing the operation.

locale = {
  -- Used by lexer bootstrap/runtime token mapping (llex.c) and by
  -- utilitary/generate-native-locale-kernel-header.lua for kernel tables.
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

  -- Parser-local attributes (lparser.c): local <const> / local <close>.
  attributes = {
    ["immutability·attribute"] = "const",
    ["closure·attribute"] = "close",
  },

  -- Type label used in diagnostics and type-facing messages.
  types = {
    ["table·type·name"] = "table",
  },

  -- Human-readable lexical token labels used in parser/lexer diagnostics.
  lexical = {
    -- "<eof>" means "end of file/input stream", not a user identifier.
    ["eof·token"] = "<eof>",
    ["number·token"] = "<number>",
    ["integer·token"] = "<integer>",
    ["name·token"] = "<name>",
    ["string·token"] = "<string>",
  },

  repl = {
    ["primary·prompt"] = "> ",
    ["continuation·prompt"] = ">> ",
    -- "lua" is the interpreter identity exported to readline (rl_readline_name).
    ["interpreter·identity"] = "lua",
    -- First %s is the interpreter name printed in the usage header.
    ["usage·description"] =
      "usage: %s [options] [script [args]]\n" ..
      "Available options are:\n" ..
      "  -e stat   execute string 'stat'\n" ..
      "  -i        enter interactive mode after executing 'script'\n" ..
      "  -l mod    require library 'mod' into global 'mod'\n" ..
      "  -l g=mod  require library 'mod' into global 'g'\n" ..
      "  -v        show version information\n" ..
      "  -E        ignore environment variables\n" ..
      "  -P        plain locale mode (no native fallback aliases)\n" ..
      "  -W        turn warnings on\n" ..
      "  --        stop handling options\n" ..
      "  -         stop handling options and execute stdin\n",
    ["version·banner"] = "Lua 5.5.1  Copyright (C) 1994-2026 Lua.org, PUC-Rio",
    ["incomplete·input·marker"] = "<eof>",
    -- "=stdin" and "=(command line)" are chunk names (leading '=' means
    -- literal chunk label, not a filesystem path).
    ["interactive·source·identity"] = "=stdin",
    ["commandline·source·identity"] = "=(command line)",
    ["debug·prompt"] = "lua_debug> ",
  },

  -- Runtime/user-facing diagnostics consumed across lua.c, lauxlib.c, llex.c,
  -- lparser.c, ldebug.c, lundump.c, loslib.c, and ldblib.c.
  diagnostics = {
    ["malformed·numeral"] = "malformed number",
    ["unfinished·string"] = "unfinished string",
    ["invalid·escape·sequence"] = "invalid escape sequence",
    ["hexadecimal·digit·expected"] = "hexadecimal digit expected",
    -- %s is the long-string delimiter kind; %d is the opening-line number.
    ["unfinished·long·construct"] = "unfinished long %s (starting at line %d)",
    ["invalid·long·string·delimiter"] = "invalid long string delimiter",
    ["lexical·element·overflow"] = "lexical element too long",
    ["chunk·line·overflow"] = "chunk has too many lines",
    -- %s is the token or symbol name the parser expected.
    ["token·expected"] = "%s expected",
    -- First %s is the missing token; second %s is the opener being closed;
    -- %d is the line where that opener started.
    ["token·expected·to·close"] = "%s expected (to close %s at line %d)",
    ["generic·syntax·error"] = "syntax error",
    ["unexpected·symbol"] = "unexpected symbol",
    ["iteration·escape·outside·iteration"] = "break outside loop",
    -- %s is the variable name being assigned; the value is declared const.
    ["assignment·to·immutable"] = "attempt to assign to const variable '%s'",
    -- First %s is the global identifier; second %s is the accessed variable.
    ["global·access·violation"] = "%s is global when accessing variable '%s'",
    -- First %s is the goto label; second %s is the variable whose scope is crossed;
    -- %d is the line where the jump originates.
    ["transfer·scope·violation"] = "<goto %s> at line %d jumps into the scope of '%s'",
    -- %s is the variable name.
    ["undeclared·variable"] = "variable '%s' not declared",
    -- %s is the label name; %d is the line where it was defined.
    ["label·undefined"] = "no visible label '%s' for <goto> at line %d",
    -- %s is the label name; %d is the line where it was first defined.
    ["label·redefinition"] = "label '%s' already defined on line %d",
    ["stack·traceback·header"] = "stack traceback:",
    -- "main chunk" is the synthetic name used for top-level script scope.
    ["main·chunk·identity"] = "main chunk",
    ["execution·interrupted"] = "interrupted!",
    -- CLI overflow when a script gets too many args; reported by lua.c.
    ["too·many·arguments·to·script"] = "too many arguments to script",
    -- REPL overflow when printing more values than the stack can hold.
    ["too·many·results·to·print"] = "too many results to print",
    -- Reported when the optional readline backend cannot be opened.
    ["unable·to·load·readline·library"] = "unable to load readline library '",
    ["memory·exhaustion"] = "cannot create state: not enough memory",
    -- "Lua warning: " is the default warning prefix emitted by lauxlib.
    ["warning·prefix"] = "Lua warning: ",
    -- %s is the CLI flag that lacks a following argument.
    ["option·needs·argument"] = "'%s' needs argument\n",
    -- %s is the unrecognized CLI flag.
    ["unrecognized·option"] = "unrecognized option '%s'\n",
    ["error·message·not·string"] = "(error message not a string)",
    -- %s is the error object's Lua type name.
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
    ["lua·function·expected"] = "Lua function expected",
    ["assignment·or·iteration·domain·expected"] = "'=' or 'in' expected",
    ["control·structure·too·long"] = "control structure too long",
    ["unknown·attribute"] = "unknown attribute '%s'",
    ["multiple·to·be·closed·variables"] = "multiple to-be-closed variables in local list",
    ["global·variables·cannot·be·to·be·closed"] = "global variables cannot be to-be-closed",
    ["argument·table·expected"] = "'arg' is not a table",
    -- Parser-scope labels below need a line-number hint.
    -- "main function" / "function at line %d" are parser scope labels used
    -- when formatting "too many ... in scope" errors; %d is the definition line.
    ["main·function·identity"] = "main function",
    ["function·at·line"] = "function at line %d",
    ["too·many·elements·in·scope"] = "too many %s (limit is %d) in %s",
    ["variadic·expansion·outside·variadic·function"] =
      "cannot use '...' outside a vararg function",
    ["missing·opening·brace"] = "missing '{'",
    ["missing·closing·brace"] = "missing '}'",
    ["utf8·value·too·large"] = "UTF-8 value too large",
    ["decimal·escape·too·large"] = "decimal escape too large",
    ["bad·argument"] = "bad argument #%d (%s)",
    ["extra·argument"] = "extra argument",
    ["calling·on·bad·self"] = "calling '%s' on bad self (%s)",
    ["argument"] = "argument",
    ["bad·named·argument·to"] = "bad %s #%d to '%s' (%s)",
    ["light·userdata·type·name"] = "light userdata",
    ["type·expected·got"] = "%s expected, got %s",
    ["invalid·option"] = "invalid option '%s'",
    ["invalid·option·start"] = "invalid option '>'",
    ["invalid·option·generic"] = "invalid option",
    ["stack·overflow·with·context"] = "stack overflow (%s)",
    ["stack·overflow"] = "stack overflow",
    ["not·enough·stack"] = "not enough stack",
    ["too·many·upvalues"] = "too many upvalues",
    ["value·expected"] = "value expected",
    ["not·enough·memory"] = "not enough memory",
    -- %s is the numeric value whose integer form could not be preserved.
    ["number·has·no·integer·representation"] = "number%s has no integer representation",
    ["value·has·no·literal·form"] = "value has no literal form",
    ["no·value"] = "no value",
    ["resulting·string·too·large"] = "resulting string too large",
    ["value·out·of·range"] = "value out of range",
    ["object·length·not·integer"] = "object length is not an integer",
    ["metamethod·tostring·must·return·string"] = "'__tostring' must return a string",
    ["core·library·numeric·types·incompatible"] =
      "core and library have incompatible numeric types",
    -- First %f is the application expected version; second %f is the core version.
    ["version·mismatch·app·needs·core·provides"] =
      "version mismatch: app. needs %f, Lua core provides %f",
    ["cannot·close·coroutine"] = "cannot close a %s coroutine",
    ["cannot·close·main·thread"] = "cannot close main thread",
    ["unable·to·get·module·filename"] = "unable to get ModuleFileName",
    ["package·field·must·be·string"] = "'package.%s' must be a string",
    -- First %s is the module name; second %s is the file path; third %s is the
    -- loader/compiler error text.
    ["error·loading·module·from·file"] =
      "error loading module '%s' from file '%s':\n\t%s",
    ["package·searchers·must·be·table"] = "'package.searchers' must be a table",
    ["module·not·found"] = "module '%s' not found:%s",
    ["popen·not·supported"] = "'popen' not supported",
    ["attempt·to·use·closed·file"] = "attempt to use a closed file",
    ["cannot·open·file"] = "cannot open file '%s' (%s)",
    ["default·file·is·closed"] = "default %s file is closed",
    ["file·already·closed"] = "file is already closed",
    ["unable·to·generate·unique·filename"] = "unable to generate a unique filename",
    ["field·out·of·bound"] = "field '%s' is out-of-bound",
    ["field·not·integer"] = "field '%s' is not an integer",
    ["field·missing·in·date·table"] = "field '%s' missing in date table",
    ["cannot·change·protected·metatable"] = "cannot change a protected metatable",
    ["reader·function·must·return·string"] = "reader function must return a string",
    ["wrong·number·of·arguments·to·insert"] = "wrong number of arguments to 'insert'",
    -- %s is the invalid value kind; %I is the table index.
    ["invalid·value·at·index·for·concat"] =
      "invalid value (%s) at index %I in table for 'concat'",
    ["too·many·results·to·unpack"] = "too many results to unpack",
    ["invalid·order·function·for·sorting"] = "invalid order function for sorting",
    ["wrong·number·of·arguments"] = "wrong number of arguments",
    ["string·slice·too·long"] = "string slice too long",
    ["too·many·results"] = "too many results",
    ["initial·position·out·of·string"] = "initial position out of string",
    ["data·string·too·short"] = "data string too short",
    ["unfinished·string·for·format·z"] = "unfinished string for format 'z'",
    ["invalid·upvalue·index"] = "invalid upvalue index",
    ["result·too·long"] = "result too long",
    ["unsigned·overflow"] = "unsigned overflow",
    ["string·longer·than·given·size"] = "string longer than given size",
    ["string·length·does·not·fit·in·given·size"] = "string length does not fit in given size",
    ["string·contains·zeros"] = "string contains zeros",
    ["variable·length·format"] = "variable-length format",
    ["format·result·too·large"] = "format result too large",
    ["initial·position·continuation·byte"] =
      "initial position is a continuation byte",
    ["attempt·op·string·with·string"] = "attempt to %s a '%s' with a '%s'",
    ["invalid·capture·index"] = "invalid capture index %%%d",
    ["invalid·pattern·capture"] = "invalid pattern capture",
    -- Pattern text is truncated because it ends with a raw '%%'.
    ["malformed·pattern·ends·with·percent"] =
      "malformed pattern (ends with '%%')",
    ["malformed·pattern·missing·closing·bracket"] =
      "malformed pattern (missing ']')",
    -- Pattern text is truncated because '%%b' lacked its opening/closing args.
    ["malformed·pattern·missing·percentb·args"] =
      "malformed pattern (missing arguments to '%%b')",
    ["too·many·captures"] = "too many captures",
    ["pattern·too·complex"] = "pattern too complex",
    -- Pattern text is truncated because '%%f' needs a following '[' set spec.
    ["missing·bracket·after·percentf"] =
      "missing '[' after '%%f' in pattern",
    ["unfinished·capture"] = "unfinished capture",
    -- %c is the replacement-string character the user tried to use.
    ["invalid·use·in·replacement·string"] =
      "invalid use of '%c' in replacement string",
    ["invalid·replacement·value"] = "invalid replacement value (a %s)",
    -- Pattern modifiers are unsupported for the '%%a'/'%%A' format specifiers.
    ["modifiers·for·percenta·not·implemented"] =
      "modifiers for format '%%a'/'%%A' not implemented",
    -- %s is the full format conversion specification.
    ["invalid·conversion·specification"] =
      "invalid conversion specification: '%s'",
    ["invalid·format·too·long"] = "invalid format (too long)",
    -- Pattern modifiers are unsupported for the '%%q' format specifier.
    ["specifier·percentq·cannot·have·modifiers"] =
      "specifier '%%q' cannot have modifiers",
    -- %s is the conversion being mapped into the format grammar.
    ["invalid·conversion·to·format"] =
      "invalid conversion '%s' to 'format'",
    -- 'c' is the format option that lacks an explicit size.
    ["missing·size·for·format·option·c"] = "missing size for format option 'c'",
    -- %c is the invalid format option character.
    ["invalid·format·option"] = "invalid format option '%c'",
    ["invalid·next·option·for·option·X"] = "invalid next option for option 'X'",
    ["format·asks·for·alignment·not·power·of·2"] = "format asks for alignment not power of 2",
    -- %d is the byte count of the integer representation.
    ["byte·integer·does·not·fit·lua·integer"] =
      "%d-byte integer does not fit into Lua Integer",
    -- %d and %d are the declared and supported integral sizes.
    ["integral·size·out·of·limits"] = "integral size (%d) out of limits [1,%d]",
    -- varinfo fragment appended to some VM/debug errors:
    -- " (%s '%s')" => e.g. " (local 'x')" / " (upvalue 'k')".
    ["varinfo·kind·name"] = " (%s '%s')",
    ["call·chain·too·long"] = "'__call' chain too long",
    ["attempt·yield·across·ccall·boundary"] =
      "attempt to yield across a C-call boundary",
    ["attempt·yield·outside·coroutine"] =
      "attempt to yield from outside a coroutine",
    ["vararg·table·no·proper·n"] = "vararg table has no proper 'n'",
    ["invalid·key·to·next"] = "invalid key to 'next'",
    ["table·overflow"] = "table overflow",
    ["table·index·is·nil"] = "table index is nil",
    ["table·index·is·nan"] = "table index is NaN",
    -- %s is the variable name receiving a non-closable value.
    ["variable·got·nonclosable·value"] =
      "variable '%s' got a non-closable value",
    ["c·stack·overflow"] = "C stack overflow",
    -- First %s is the counted thing; %d is the limit.
    ["too·many·elements·limit"] = "too many %s (limit is %d)",
    ["memory·allocation·error·block·too·big"] =
      "memory allocation error: block too big",
    ["for·step·is·zero"] = "'for' step is zero",
    ["index·chain·too·long"] = "'__index' chain too long; possible loop",
    ["newindex·chain·too·long"] = "'__newindex' chain too long; possible loop",
    ["string·length·overflow"] = "string length overflow",
    ["attempt·divide·by·zero"] = "attempt to divide by zero",
    ["attempt·perform·nmod0"] = "attempt to perform 'n%%0'",
    -- First %s is the operation name; second %s is the operand kind; third %s is an optional suffix.
    ["attempt·to·op·a·value"] = "attempt to %s a %s value%s",
    -- First %s is the loop clause kind; second %s is the actual type seen.
    ["bad·for·number·expected"] = "bad 'for' %s (number expected, got %s)",
    -- %s is an optional suffix identifying the number string.
    ["number·has·no·integer·representation"] =
      "number%s has no integer representation",
    -- %s is the value kind being compared.
    ["attempt·compare·two·values"] = "attempt to compare two %s values",
    -- Both %s values are the compared operand descriptions.
    ["attempt·compare·with"] = "attempt to compare %s with %s",
    -- %s is the global name being redefined.
    ["global·already·defined"] = "global '%s' already defined",
    -- "?:?: %s" is used when no source/line is known; "%s:%d: %s" is the
    -- standard source:line diagnostic shape.
    ["unknown·source·line·message"] = "?:?: %s",
    ["source·line·message"] = "%s:%d: %s",
    -- First %s is the chunk/file name; second %s is the reason.
    ["bad·binary·format"] = "%s: bad binary format (%s)",
    -- First %s is the binary-kind label; second %s is the mismatch detail.
    ["binary·number·mismatch"] = "%s %s mismatch",
    ["truncated·chunk"] = "truncated chunk",
    ["truncated·fixed·buffer"] = "truncated fixed buffer",
    ["integer·overflow"] = "integer overflow",
    ["invalid·string·index"] = "invalid string index",
    ["bad·format·for·constant·string"] = "bad format for constant string",
    ["invalid·constant"] = "invalid constant",
    ["version·mismatch"] = "version mismatch",
    ["format·mismatch"] = "format mismatch",
    ["not·a·binary·chunk"] = "not a binary chunk",
    ["failed·to·load·locale·warning"] = "warning: failed to load locale '%s'",
    ["locale·name·too·long"] = "locale name is too long",
    ["locale·chunk·not·table"] = "locale chunk did not return a table",
    ["invalid·conversion·specifier·for·strftime"] = "invalid conversion specifier '%%%s'",
    ["time·result·cannot·be·represented·in·this·installation"] =
      "time result cannot be represented in this installation",
    ["date·result·cannot·be·represented·in·this·installation"] =
      "date result cannot be represented in this installation",
    ["time·out·of·bounds"] = "time out-of-bounds",
  },

  -- Core runtime internal identifiers:
  -- _ENV = lexical environment table, _G = global table, self = implicit
  -- method receiver parameter name.
  internals = {
    -- These registry/env names are internal, but they can leak through error
    -- paths and debug output, so they stay locale-backed.
    ["init·environment·variable"] = "LUA_INIT",
    ["locale·environment·variable"] = "LUA_LOCALE",
    ["readline·library·environment·variable"] = "LUA_READLINELIB",
    ["locale·table·registry·key"] = "LUA_LOCALE_TABLE",
    ["base·locale·table·registry·key"] = "LUA_BASE_LOCALE_TABLE",
    ["no·environment·registry·flag"] = "LUA_NOENV",
    ["plain·locale·registry·flag"] = "LUA_PLAINLOCALE",
    ["environment·identifier"] = "_ENV",
    ["global·table·identifier"] = "_G",
    ["implicit·self·parameter"] = "self",
  },

  -- Lexer layout extension hook (currently empty table in native locale).
  layout = {
    ["ignored·glyphs"] = {},
  },

  -- Runtime-consumed alias hooks:
  -- os library global name and os.exit method name.
  aliases = {
    ["os·library·identifier"] = "os",
    ["os·exit·method"] = "exit",
  },

  ["identifier·aliases"] = {},
}
