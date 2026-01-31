import Mathlib

lemma integral_one_div_sq (a b : ℝ) (h : (0 : ℝ) ∉ Set.Icc a b) :
    ∫ x in a..b, 1 / x^2 = a⁻¹ - b⁻¹ := by
  sorry