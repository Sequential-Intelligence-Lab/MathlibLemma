import Mathlib

lemma integral_cos_sin (a b : ℝ) :
    ∫ x in a..b, Real.cos x * Real.sin x =
      (Real.sin b ^ 2 / 2) - (Real.sin a ^ 2 / 2) := by
  sorry