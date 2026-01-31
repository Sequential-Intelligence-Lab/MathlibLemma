import Mathlib

lemma integral_cos_shift_pi (a b : ℝ) :
    ∫ x in a..b, Real.cos (x + Real.pi) = - ∫ x in a..b, Real.cos x := by
  sorry
