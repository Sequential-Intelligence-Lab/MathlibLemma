import Mathlib

lemma Filter.Eventually.congr' {α} {p q : α → Prop} {f : Filter α}
    (h : ∀ᶠ x in f, p x ↔ q x) :
    (∀ᶠ x in f, p x) ↔ (∀ᶠ x in f, q x) := by
  sorry
