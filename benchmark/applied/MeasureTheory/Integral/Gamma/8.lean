import Mathlib

/-- A relation between integrals of consecutive powers for the same exponential kernel. -/
lemma Real.integral_succ_rpow_mul_exp_neg_rpow_relation
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    (q + 1) *
        ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ p)) =
      ∫ x in Set.Ioi (0 : ℝ), x ^ (q + 1) * p * x ^ (p - 1) * Real.exp (-(x ^ p)) := by
  sorry
