import Mathlib

lemma Filter.NeBot_iff_eventually {α} (f : Filter α) :
    Filter.NeBot f ↔ ∀ p : α → Prop, (∀ᶠ x in f, p x) → ∃ x, p x := by
  sorry
