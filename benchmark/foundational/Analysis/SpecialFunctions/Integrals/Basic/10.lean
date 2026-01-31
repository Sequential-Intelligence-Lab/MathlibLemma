import Mathlib

open Real

lemma integral_inv_sq (a b : ℝ) (h : 0 ∉ Set.uIcc a b) :
    ∫ x in a..b, x⁻¹ ^ 2 = (a⁻¹ - b⁻¹) := by
  sorry