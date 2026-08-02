-- Symbolic demo locale for parser/operator i18n.
-- This file is mostly for demos, tests, and fun; cool in practice, not meant
-- as an everyday daily-driver locale.
--
-- Symbol picks:
--   🌐 = global table alias (worldwide/global vibe)
--   🧭 = environment binding (context navigation / directional scope)
--   🪞 = implicit method receiver ("self"), because reflection is classy
--
-- Diagnostics here are intentionally theatrical:
-- they parade academic symbolism with an esoteric but internally coherent
-- flavor; readers are still free to treat it as abstract nonsense and enjoy
-- the glyph storm.
-- [1] https://en.wikipedia.org/wiki/Abstract_nonsense

return {
  operators = {
    ["assignment·operator"] = "←",
    ["equality·comparison"] = "＝",
    ["inequality·comparison"] = "≠",
    ["inferior·ordering·comparison"] = "≤",
    ["superior·ordering·comparison"] = "≥",
    ["strict·inferior·ordering"] = "‹",
    ["strict·superior·ordering"] = "›",
    ["addition·operator"] = "＋",
    ["subtraction·operator"] = "−",
    ["multiplication·operator"] = "×",
    ["division·operator"] = "÷",
    ["modulo·operator"] = "％",
    ["exponentiation·operator"] = "↑",
  },

  internals = {
    ["global·table·identifier"] = "🌐",
    ["environment·identifier"] = "🧭",
    ["implicit·self·parameter"] = "🪞",
  },

  diagnostics = {
    ["generic·syntax·error"] = "⚠ ∄π∈Π : Γ ⊢ ⟨…=…⟩",
    ["unexpected·symbol"] = "⚠ (σ ∉ Σ) ∧ Γ ⊬ ⟨…⇔…⟩",
  },
}
