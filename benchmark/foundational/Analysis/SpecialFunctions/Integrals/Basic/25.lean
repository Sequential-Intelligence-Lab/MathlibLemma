import Mathlib

lemma integral_sin_cos (a b : ℝ) :
    ∫ x in a..b, Real.sin x * Real.cos x =
      ((fun x => Real.sin x ^ 2 / 2) b - (fun x => Real.sin x ^ 2 / 2) a) := by
  sorry