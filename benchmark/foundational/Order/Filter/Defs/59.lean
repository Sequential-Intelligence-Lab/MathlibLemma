import Mathlib

lemma Filter.Frequently_iff {α} {f : Filter α} {p : α → Prop} :
    (∃ᶠ x in f, p x) ↔ ¬ ∀ᶠ x in f, ¬ p x := by
  sorry
