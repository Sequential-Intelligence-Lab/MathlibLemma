import Mathlib

lemma Filter.NeBot_iff_frequently {α} (f : Filter α) :
    Filter.NeBot f ↔ ∀ s, s ∈ f → ∃ x ∈ s, True := by
  sorry
