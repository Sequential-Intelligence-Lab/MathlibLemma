import Mathlib

/-- A bound on `∫_0^∞ x^q e^{-x^p} dx` in terms of `Gamma`. -/
lemma Real.integral_rpow_mul_exp_neg_rpow_bound
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    |∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ p))| ≤
      (1 / p) * Real.Gamma ((q + 1) / p) := by
  sorry
