import Mathlib

/-- Strict positivity of the Gamma-type integral under the usual conditions. -/
lemma Real.integral_rpow_mul_exp_neg_rpow_pos
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    0 < ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ p)) := by
  sorry
