import Mathlib

lemma sqrt_preimage_Ioi (s : Set ℝ) :
    Real.sqrt ⁻¹' (s ∩ Set.Ioi 0) = {x | 0 < x ∧ √x ∈ s} := by
  sorry
