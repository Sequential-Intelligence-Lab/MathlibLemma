import Mathlib

/-- A version of the Gamma integral on a half-infinite interval with shift. -/
lemma Real.integral_rpow_mul_exp_neg_shifted
    {p q a : ℝ} (hp : 0 < p) (hq : -1 < q) (ha : 0 < a) :
    ∫ x in Set.Ioi a, (x - a) ^ q * Real.exp (-((x - a) ^ p)) =
      (1 / p) * Real.Gamma ((q + 1) / p) := by
  sorry
