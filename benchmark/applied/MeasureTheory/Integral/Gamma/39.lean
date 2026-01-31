import Mathlib

/-- A bound on the tail of the Gamma kernel integral. -/
lemma Real.integral_rpow_mul_exp_neg_rpow_Ioi_tail_estimate
    {p q R : ℝ} (hp : 0 < p) (hq : -1 < q) (hR : 1 ≤ R) :
    ∫ x in Set.Ioi R, x ^ q * Real.exp (-(x ^ p)) ≤
      Real.exp (-(R ^ p) / 2) * (1 + R ^ (q + 1)) := by
  sorry
