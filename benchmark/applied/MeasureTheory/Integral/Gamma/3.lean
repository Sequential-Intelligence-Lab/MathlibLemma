import Mathlib

/-- A version of the Gamma integral on the whole `ℝ` for an even integrand. -/
lemma Real.integral_rpow_mul_exp_neg_rpow_univ_even
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    ∫ x : ℝ, |x| ^ q * Real.exp (-(|x|) ^ p) =
      2 * (1 / p) * Real.Gamma ((q + 1) / p) := by
  sorry
