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
  Target metaphor:
    🎯 aliases assert: the dart is expected to reach the target.
    🎚 aliases mode in tests: slider semantics match a selected run mode.
    🏭 denotes factory mode: default state as a device leaving factory settings.
    🛄 aliases arg in tests: argument table as luggage brought into runtime.
    🧩 aliases type: puzzle-piece shape matches classification/fit of values.
    🗂️ labels table type: indexed tabs evoke categorized key/value entries.
  Loop-orientation congruence:
    clockwise marks forward/pre-check iteration flow (♺, ↻)
    counterclockwise marks post-check termination/back-edge (↺)
  Punctuation congruence:
    syntagmatic separators are expressed with fleurons (☙, ❦).
    Dot and colons are excluded: in Lua they primarily serve polymorphem
    agglutination (field/method/token binding), not syntagm separation.
    Straight quotes are fullwidth aliases (＂, ＇) purely to exercise
    codepoint aliasing in demos/tests; not for new semantics.
    Brackets are deliberately mapped to squarish forms for a shared visual
    family across grouping, indexing, and constructor delimiters.
  Diagnostics avoid classic letter-derived math glyphs in the domain such as ∃, ∄, ∈, ∉, π, Π, Γ, σ, Σ
  through two main extended metaphors.
  Painting metaphor:
     🖌️ proposition rather than π;
     🎨 set of all possible propositions rather than Π;
     🖼️ frames derivation/context, rather than Γ.
  Membership metaphor:
     📤 is used as inclusion gesture, rather than ∈;
     ⛔ for explicit non-membership, rather than ∉.
  Discourse metaphor:
    💬 symbol rather than σ;
    💭 set of all possible symbols rather than Σ;
    🔣 marks an explicit symbol-token focus (escape-level symbol marker).
  Cosmologic metaphor:
     ⚛️ atomic existence holds, rather than ∃;
     🌌 universal existence holds, rather than ∀;
     ⚫ no such instance in this cosmos, rather than ∄.
  Branch-tree symbols:⁴
    ┬ = if branch root/condition head
    ├ = elseif branch continuation
    └ = else fallback branch
    │ and ┴ are decorative tree layout glyphs ignored by lexer when listed in
    layout.ignored·glyphs.
  Bitwise circled family:
    bitwise ops are mapped to circled counterparts when available
    (⊗, ⊙, ⊕, ⊝) to stay visually close to logic symbols.
    Ideally each would be generated from its non-bitwise form via
    U+20DD enclosing circle (e.g. ∧⃝, ∨⃝, ¬⃝), but that rendering is
    typically awkward/inconsistent in terminal and editor fonts.

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
    -- ♺ keeps the cycle-arrow family used by loop keywords and avoids letters.
    ["iteration·introducer"] = "♺",
    -- □ marks a declaration frame, pairing visually with terminator ∎.
    ["function·introducer"] = "□",
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
    -- ↺ marks post-check termination/back-edge for repeat...until loops.
    ["postcondition·iteration·terminator"] = "↺",
    -- ↻ marks pre-check looping for while-style iteration.
    ["precondition·iteration·introducer"] = "↻",
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
    -- ﹤ (U+FE64) is the compatibility small less-than form.
    ["strict·inferior·ordering"] = "﹤",
    -- ﹥ (U+FE65) is the compatibility small greater-than form.
    ["strict·superior·ordering"] = "﹥",
    -- ＋ mirrors plus while keeping symbolic/fullwidth style coherence.
    ["addition·operator"] = "＋",
    -- − uses the mathematical minus sign (not ASCII hyphen-minus).
    ["subtraction·operator"] = "−",
    -- × is canonical multiplication notation.
    ["multiplication·operator"] = "×",
    -- ∕ (U+2215 DIVISION SLASH) keeps floating division explicit and localized.
    ["division·operator"] = "∕",
    -- ÷ denotes integer/quotient division in this symbolic locale.
    ["integer·division·operator"] = "÷",
    -- ⁒ stays visually near percent while keeping arithmetic modulo distinct
    -- from Lua's textual % usages (patterns, format strings, replacements).
    -- Dismissed: two-stacked-circles-style glyph like ideas were less recognizable
    -- than this punctuation-family compromise in typical developer contexts.
    ["modulo·operator"] = "⁒",
    -- ↑ denotes exponentiation as power "raised up".
    ["exponentiation·operator"] = "↑",
    -- ⧺ (U+29FA DOUBLE PLUS) explicitly denotes append/join composition.
    ["concatenation·operator"] = "⧺",
    -- … gives variadics a single-glyph ellipsis form.
    ["variadic·expansion"] = "…",
    -- 𐄹 (U+101B1 AEGEAN WEIGHT SECOND SUBUNIT) for cardinality: borrowed from
    -- ancient metrology and repurposed as a "measure of magnitude" metaphor.
    -- Considered alternatives: 📏 (ruler, literal measure) and 📐 (set square,
    -- signaling integer result). Aegean weight was retained for its glyph density
    -- (single codepoint), antiquarian coherence with this locale's esoteric style,
    -- and obscurity (avoids visual ambiguity with other mathematical symbols).
    ["cardinality·operator"] = "𐄹",
    -- ⊗ is the circled-family counterpart chosen for bitwise conjunction.
    ["bitwise·conjunction"] = "⊗",
    -- ⊙ is used as the circled-family counterpart for bitwise disjunction.
    ["bitwise·disjunction"] = "⊙",
    -- ⊕ is widely used to denote exclusive disjunction/XOR.
    ["bitwise·exclusive·disjunction"] = "⊕",
    -- ⊝ is the unary circled-family counterpart for bitwise negation.
    ["bitwise·negation"] = "⊝",
    -- ≪ is the established left-shift notation in symbolic operator usage.
    ["ascending·significance·shift"] = "≪",
    -- ≫ is the established right-shift notation in symbolic operator usage.
    ["descending·significance·shift"] = "≫",
    -- ‐ (U+2010 HYPHEN) is the base hard-link for field/member access.
    ["field·access·operator"] = "‐",
    -- – (U+2013 EN DASH) marks method invocation as the extended variant.
    ["method·invocation·operator"] = "–",
    -- 🏷 frames goto labels with a direct tag metaphor.
    ["label·delimiter"] = "🏷",
  },

  delimiters = {
    -- 【】 merge square/round visual cues; kept for classic expression grouping.
    ["expression·grouping·opening"] = "【",
    ["expression·grouping·closing"] = "】",
    -- ⟦⟧ align indexing with denotational-bracket semantics already in use.
    ["index·opening"] = "⟦",
    ["index·closing"] = "⟧",
    -- ⁅⁆ echo dictionary-style supplemental enclosure; acceptable fit for Lua
    -- table constructors (associative/hash structures, not pure set literals).
    ["constructor·opening"] = "⁅",
    ["constructor·closing"] = "⁆",
    -- ☙ is retained as list separator because it is a documented bullet form⁵,
    -- points back to the previous item (matching Lua's trailing-comma legality),
    -- and avoids the leading-item semantics of `•` (Lua rejects leading commas).
    ["element·separator"] = "☙",
    -- ❦ is retained for statement separation: Lua allows both leading and
    -- trailing semicolons, so a bilateral connector fits better than 𐡸.
    -- Its waved/swung form evokes a tilde-like "soft relation", mirroring how
    -- semicolons link independent execution blocks that remain syntactically
    -- separate yet pragmatically related.
    ["statement·separator"] = "❦",
    -- Lexer inquiry outcome: short strings opened by " or ' and long strings
    -- opened by [[...]] are distinct lexical paths, but all return TK_STRING.
    -- Therefore we keep straight/neutral quote semantics and only swap codepoint:
    -- Unicode offers fullwidth straight alternates (＂ U+FF02, ＇ U+FF07),
    -- which are used here solely for thorough alias testing/demo coverage.
    ["string·delimiter"] = "＂",
    ["string·delimiter·alternate"] = "＇",
  },

  attributes = {
    -- ❄️ conveys frozen/static state for immutable bindings.
    ["immutability·attribute"] = "❄️",
    -- 🔒 signals closing/finalization semantics through lock metaphor.
    ["closure·attribute"] = "🔒",
  },

  types = {
    -- 🗂️ captures "table" as a structured collection of keyed entries.
    ["table·type·name"] = "🗂️",
  },

  repl = {
    -- ✏ is a pencil at rest: inviting the first line.
    ["primary·prompt"] = "✏ ",
    -- ✎ is a writing pencil: continuation of an in-progress line.
    ["continuation·prompt"] = "✎ ",
    -- 🌕 provides a moon glyph identity for Lua.
    ["interpreter·identity"] = "🌕",
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
    -- ⌁ is used as an EOT/EOF-style marker in this symbolic locale.
    ["incomplete·input·marker"] = "⌁",
    -- 🎞️ fits interactive input as a fed stream: a reel/tape carrying symbols
    -- into the machine, matching the classic Turing-style input-tape image.
    ["interactive·source·identity"] = "🎞️",
    -- ≜ marks command-line chunks as explicit definitions.
    ["commandline·source·identity"] = "≜",
    -- 🐞✏ combines bug context with interactive input affordance.
    ["debug·prompt"] = "🐞✏ ",
  },

  diagnostics = {
    -- no such thing as numeric sequence construction where the sequence is not admitted to the language set.
    ["malformed·numeral"] = "⚠ ⚫🏭🔢(🏗️🔢∧(🔢⛔🎨))",
    -- Formal: ∄factory(string) : construct(string) ∧ open-quote ∧ ¬close‑quote
    -- no such with as a construct of a string with opening quote and no closing quote.
    ["unfinished·string"] = "⚠ ⚫🏭🔗:(️🏗🔗∧📭🔣＂ ∧ ¬📪🔣＂)",
    -- Keep syntax errors dense while avoiding letter-derived glyphs.
    ["generic·syntax·error"] = "⚠ ⚫(🖌📤🎨) ∧ 🖼️ ⊬ ⟨…=…⟩",
    -- Keep unexpected-symbol diagnostics explicit with non-letter symbolism.
    ["unexpected·symbol"] = "⚠ (💬⛔💭) ∧ 🖼️ ⊬ ⟨…⇔…⟩",
  },

  internals = {
    -- 🧭 continues the spatial metaphor for current lexical environment.
    ["environment·identifier"] = "🧭",
    -- 🌐 marks globally shared namespace.
    ["global·table·identifier"] = "🌐",
    -- 🪞 suggests reflective self-reference for method receiver.
    ["implicit·self·parameter"] = "🪞",
  },

  aliases = {
    -- 🎯 is expected to hit target truth; it aliases assert().
    ["assertion·guard"] = "🎯",
    -- 🎚 selects/holds run mode in tests without changing language keywords.
    ["mode·identifier"] = "🎚",
    -- 🛄 carries invocation arguments into the running chunk.
    ["argument·table·identifier"] = "🛄",
    -- 🧩 marks value classification as a "fit into a type shape".
    ["type·inspector"] = "🧩",
  },

  layout = {
    -- Decorative branch-tree connectors accepted as ignorable layout glyphs.
    ["ignored·glyphs"] = { "│", "┴" },
  },
}

return locale

-- # References
-- ¹ https://en.wikipedia.org/wiki/Abstract_nonsense
-- ² https://en.wikipedia.org/wiki/Assignment_(computer_science)#Notation
-- ³ https://en.wikipedia.org/wiki/Media_controls
-- ⁴ https://en.wikipedia.org/wiki/Begriffsschrift
-- ⁵ https://en.wikipedia.org/wiki/Bullet_(typography)#In_Unicode
