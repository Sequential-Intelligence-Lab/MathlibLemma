import Mathlib

/-- A scaling lemma for `x ^ q * exp (-b * x ^ p)` under the change of variables `x = c * y`. -/
lemma Real.integral_scaling_rpow_mul_exp_neg_mul_rpow
    {p q b c : ℝ} (hp : 0 < p) (hb : 0 < b) (hc : 0 < c) :
    ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-b * x ^ p) =
      c ^ (q + 1) * ∫ y in Set.Ioi (0 : ℝ), y ^ q * Real.exp (-b * (c ^ p) * y ^ p) := by
  sorry
