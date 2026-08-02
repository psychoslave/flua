--[[
Symbolic demo locale for parser/operator i18n.
This file is mostly for demos, tests, and fun; cool in practice, not meant
as an everyday daily-driver locale.

Extended metaphors:
  Spatial analogy:
    🌐 = global table alias (worldwide/global scope)
    🗺️ = global declaration keyword (map-wide binding scope)
    🧭 = environment binding (context navigation/direction)
    📍 = local binding marker (pinned point inside that map)
  Pencil analogy:
    ✏ = primary prompt (tool at rest, invitation to start writing)
    ✎ = continuation prompt (tool in motion, line already underway)
  Media control symbols:
    ▶️ = execute/enter block (play/advance state)³
    🔽 = break current loop (step downward/out)³
    🔁 = repeat cycle (loop icon)³
    ⏫ = return result upward (fast-up/emit)³
    ⏭️ = goto jump (skip to next marked point)³
  Branch-tree symbols:⁴
    ┬ = if branch root/condition head
    ├ = elseif branch continuation
    └ = else fallback branch

Diagnostics here are intentionally theatrical:
they parade academic symbolism with an esoteric but internally coherent
flavor; readers are still free to treat it as abstract nonsense and enjoy
the glyph storm.¹
--]]

local locale = {
  keywords = {
    -- ∧ is the standard logical conjunction symbol.
    ["conjunction·operator"] = "∧",
    -- 🔽 acts as "break": drop out of the current iteration frame.
    ["iteration·escape"] = "🔽",
    -- ▶️ fits "do": it marks immediate execution/entry into a block.
    ["block·introducer"] = "▶️",
    -- └ draws the fallback branch in the conditional tree.
    ["conditional·alternative"] = "└",
    -- ├ draws intermediate alternative branches ("elseif").
    ["conditional·alternative·protasis"] = "├",
    -- ∎ is established as an end-of-proof/section marker, matching closure.
    ["block·terminator"] = "∎",
    -- ⊥ is canonical falsity in symbolic logic.
    ["falsity·literal"] = "⊥",
    -- ∀ matches "for each" quantification semantics for loop iteration.
    ["iteration·introducer"] = "∀",
    -- ƒ marks named/function declaration; keep ↦ available for infix mappings.
    ["function·introducer"] = "ƒ",
    -- 🗺️ marks declarations that bind at map/world scope.
    ["dynamic·scope·declaration"] = "🗺️",
    -- ⏭️ maps goto to a visual "skip/jump to marker" control.
    ["unconditional·transfer"] = "⏭️",
    -- ┬ draws the conditional root branch ("if") in tree form.
    ["conditional·protasis"] = "┬",
    -- 📤 ("outbox") suggests values being yielded out of an iterator.
    ["iteration·domain"] = "📤",
    -- 📍 marks a local binding as a pinned in-scope point.
    ["lexical·scope·declaration"] = "📍",
    -- ∅ is canonical empty-set/null symbolism.
    ["null·literal"] = "∅",
    -- ¬ is canonical logical negation.
    ["negation·operator"] = "¬",
    -- ∨ is canonical logical disjunction.
    ["disjunction·operator"] = "∨",
    -- 🔁 is the established loop/repeat symbol.
    ["postcondition·iteration·introducer"] = "🔁",
    -- ⏫ conveys returning/emitting values upward to caller.
    ["result·emission"] = "⏫",
    -- ∴ ("therefore") marks the consequence branch after a satisfied guard.
    ["conditional·apodosis"] = "∴",
    -- ⊤ is canonical truth in symbolic logic.
    ["truth·literal"] = "⊤",
    -- ↻ marks post-check continuation for repeat...until loops.
    ["postcondition·iteration·terminator"] = "↻",
    -- ↺ marks pre-check looping for while-style iteration.
    ["precondition·iteration·introducer"] = "↺",
  },

  operators = {
    -- ← is a well-established assignment notation and the only single-glyph
    -- assignment form that does not collide with other symbols used here.²
    ["assignment·operator"] = "←",
    -- ＝ uses fullwidth form to visually separate language token from ASCII.
    ["equality·comparison"] = "＝",
    -- ≠ is standard symbolic inequality.
    ["inequality·comparison"] = "≠",
    -- ≤ is standard symbolic non-strict lower bound.
    ["inferior·ordering·comparison"] = "≤",
    -- ≥ is standard symbolic non-strict upper bound.
    ["superior·ordering·comparison"] = "≥",
    -- ‹ emphasizes strict lower-than as a distinct glyph.
    ["strict·inferior·ordering"] = "‹",
    -- › emphasizes strict greater-than as a distinct glyph.
    ["strict·superior·ordering"] = "›",
    -- ＋ mirrors plus while keeping symbolic/fullwidth style coherence.
    ["addition·operator"] = "＋",
    -- − uses the mathematical minus sign (not ASCII hyphen-minus).
    ["subtraction·operator"] = "−",
    -- × is canonical multiplication notation.
    ["multiplication·operator"] = "×",
    -- ÷ is canonical division notation.
    ["division·operator"] = "÷",
    ["integer·division·operator"] = "//",
    -- ％ keeps fullwidth punctuation parity with other arithmetic symbols.
    ["modulo·operator"] = "％",
    -- ↑ denotes exponentiation as power "raised up".
    ["exponentiation·operator"] = "↑",
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
    -- ✏ is a pencil at rest: inviting the first line.
    ["primary·prompt"] = "✏ ",
    -- ✎ is a writing pencil: continuation of an in-progress line.
    ["continuation·prompt"] = "✎ ",
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
      "  -P        plain locale mode (no native fallback aliases)\n" ..
      "  -W        turn warnings on\n" ..
      "  --        stop handling options\n" ..
      "  -         stop handling options and execute stdin\n",
    ["incomplete·input·marker"] = "<eof>",
    ["interactive·source·identity"] = "=stdin",
    ["commandline·source·identity"] = "=(command line)",
    -- 🐞✏ combines bug context with interactive input affordance.
    ["debug·prompt"] = "🐞✏ ",
  },

  diagnostics = {
    -- Keep syntax errors denser but still hint at failed derivability.
    ["generic·syntax·error"] = "⚠ ∄π∈Π : Γ ⊢ ⟨…=…⟩",
    -- Keep unexpected-symbol diagnostics explicit about symbol-set mismatch.
    ["unexpected·symbol"] = "⚠ (σ ∉ Σ) ∧ Γ ⊬ ⟨…⇔…⟩",
  },

  internals = {
    -- 🧭 continues the spatial metaphor for current lexical environment.
    ["environment·identifier"] = "🧭",
    -- 🌐 marks globally shared namespace.
    ["global·table·identifier"] = "🌐",
    -- 🪞 suggests reflective self-reference for method receiver.
    ["implicit·self·parameter"] = "🪞",
  },
}

return locale

-- # References
-- ¹ https://en.wikipedia.org/wiki/Abstract_nonsense
-- ² https://en.wikipedia.org/wiki/Assignment_(computer_science)#Notation
-- ³ https://en.wikipedia.org/wiki/Media_controls
-- ⁴ https://en.wikipedia.org/wiki/Begriffsschrift
