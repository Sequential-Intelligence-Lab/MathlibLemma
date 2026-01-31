import Mathlib

lemma Filter.Frequently_iff_finite_inter {α} {f : Filter α} {p : α → Prop} :
    (∃ᶠ x in f, p x) ↔ ∀ s ∈ f, ∃ x ∈ s, p x := by
  sorry
