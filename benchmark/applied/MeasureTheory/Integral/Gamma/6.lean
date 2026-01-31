import Mathlib

/-- The Laplace transform of `x^q * exp(-x)` on `(0, ∞)`. -/
lemma Real.laplace_transform_rpow_exp_neg
    {q s : ℝ} (hq : -1 < q) (hs : 0 < s) :
    ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-x) * Real.exp (-s * x) =
      Real.Gamma (q + 1) / (1 + s) ^ (q + 1) := by
  sorry
