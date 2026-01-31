import Mathlib

/-- A version of the Gamma integral on `(0,∞)` with absolute value in the power. -/
lemma Real.integral_abs_rpow_mul_exp_neg_rpow_Ioi
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    ∫ x in Set.Ioi (0 : ℝ), |x| ^ q * Real.exp (-(|x|) ^ p) =
      (1 / p) * Real.Gamma ((q + 1) / p) := by
  sorry
