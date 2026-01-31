import Mathlib

lemma integral_sin_over_x_symm (a : ℝ) :
    ∫ x in -a..a, Real.sin x / x = 2 * ∫ x in 0..a, Real.sinc x := by
  sorry
