import Mathlib

lemma Filter.sInf_le_iff {α} (S : Set (Filter α)) (f : Filter α) :
    sInf S ≤ f ↔ ∀ s ∈ f, s ∈ sInf S := by
  sorry
