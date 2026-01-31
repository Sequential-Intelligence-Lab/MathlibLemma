import Mathlib

lemma Filter.Eventually_iff {α} (f : Filter α) (p : α → Prop) :
    (∀ᶠ x in f, p x) ↔ {x | p x} ∈ f := by
  sorry
