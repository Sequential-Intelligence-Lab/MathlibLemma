import Mathlib

lemma integral_sin_shift_pi (a b : ℝ) :
    ∫ x in a..b, Real.sin (x + Real.pi) = - ∫ x in a..b, Real.sin x := by
  sorry
