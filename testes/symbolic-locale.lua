📍 🎚 ← 🎯【🛄⟦1⟧☙ ＂🤷＂】

┬ 🎚 ＝ ＂🏭＂ ∴
│ 🎯【🧩【🌐】 ＝ ＂🗂️＂】
│ 🎯【⟼【🌐☙ ＂🌐＂】 ＝ 🌐】
│ ▶️
│  📍 📦 ← ⁅⁆
│  ⇷【📦☙ ⁅x ← 7⁆】
│  🎯【⇸【📦】‐x ＝ 7】
│ ∎
│ 🎯【⟼【🌐☙ ＂⚙️＂】 ＝ os】
│ 🎯【🧩【rawget【⚙️☙ ＂⏼＂】】 ＝ ＂function＂】
│ ▶️
│  📍 🚚☙ 🎁 ← load【＂⏫ ⚙️–⏼【0☙ false】＂】
│  🎯【🚚 ≠ nil ∧ 🎁 ＝ nil】
│ ∎
│ ▶️
│  📍 🪤 ← 🎯【load【＂z←7❦ ⏫ z＂】】
│  🎯【🪤【】 ＝ 7】
│ ∎
├ 🎚 ＝ ＂plain＂ ∴
│  🎯【🌐 ＝ nil】
│  ▶️
│    📍 🪤☙ err ← load【＂z=7＂】
│    🎯【🪤 ＝ nil and 🧩【err】 ＝ ＂string＂】
│    🎯【string‐find【err☙ ＂(💬⛔💭)＂☙ 1☙ true】】
│  ∎
└ error【＂invalid mode＂】
  ∎

□ expect_fail【src☙ needle】
  📍 🪤☙ err ← load【src】
  🎯【🪤 ＝ nil and 🧩【err】 ＝ ＂string＂】
  ┬ needle ≠ nil ∴
  │ 🎯【string‐find【err☙ needle☙ 1☙ true】】
  ┴ ∎
  ⏫ err
∎

🗃️ ← 1
🎯【🗃️ ＝ 1】

🧰 ← 2 ＋ 3
🎯【🧰 ＝ 5】

🎯【41 ≠ 42】
🎯【2 ≤ 3 ∧ 4 ≥ 4】
🎯【2 ﹤ 3 ∧ 4 ﹥ 3】
🎯【【⊤ ∨ ⊥】 ∧ 【¬⊥】 ∧ 【∅ ＝ nil】】
🎯【7 ÷ 2 ＝ 3】
🎯【7 ∕ 2 ＝ 3.5】
🎯【2 ↑ 3 ＝ 8】
🎯【5 ⁒ 2 ＝ 1】
🎯【1 ≪ 3 ＝ 8】
🎯【8 ≫ 1 ＝ 4】

▶️
  expect_fail【＂global g = 7＂☙ nil】
∎

▶️
  📍 sum ← 0
  ♺ _☙ v 📤 ipairs【⁅1☙ 2☙ 3⁆】 ▶️
    sum ← sum ＋ v
  ∎
  🎯【sum ＝ 6】
∎

▶️
  📍 k ← 0
  ↻ ⊤ ▶️
    k ← k ＋ 1
    ┬ k ＝ 2 ∴
      🔽
    ∎
  ∎
  🎯【k ＝ 2】
∎

▶️
  📍 i ← 0
  ↻ i ﹤ 2 ▶️
    i ← i ＋ 1
  ∎
  🎯【i ＝ 2】
∎

▶️
  📍 j ← 0
  🔁
    j ← j ＋ 1
  ↺ j ≥ 2
  🎯【j ＝ 2】
∎

□ sqr【x】
  ⏫ x × x
∎
🎯【sqr【3】 ＝ 9】

□ argc【…】
  ⏫ select【＂#＂☙ …】
∎
🎯【argc【1☙ 2☙ 3】 ＝ 3】

┬ 🎚 ＝ ＂🏭＂ ∴
  🎯【𐄹⁅1☙ 2☙ 3⁆ ＝ 3】

  📍 locale ← require【＂locale.symbolic·transpraxis＂】
  📍 env_expected ← locale‐internals⟦＂environment·identifier＂⟧
  📍 self_expected ← locale‐internals⟦＂implicit·self·parameter＂⟧
  📍 g ← 🎯【load【＂return 1＂】】
  📍 env ← debug‐getupvalue【g☙ 1】
  🎯【env ＝ env_expected】

  📍 t ← ⁅⁆
│ □ t–id【x】
││  ⏫ x
│ ∎
  📍 escaped ← ＂a\│b＂
  🎯【escaped ＝ ＂a│b＂】
  📍 selfname ← debug‐getlocal【t‐id☙ 1】
  🎯【selfname ＝ self_expected】
∎

print【＂symbolic-locale-ok＂】
