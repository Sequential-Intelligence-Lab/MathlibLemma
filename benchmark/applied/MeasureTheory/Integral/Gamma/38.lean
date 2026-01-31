import Mathlib

/-- The derivative in `b` of the integral `∫ x>0, x^q * exp(-b x^p)`. -/
lemma Real.hasDerivAt_integral_rpow_mul_exp_neg_mul_rpow_in_b
    {p q b : ℝ} (hp : 0 < p) (hq : -1 < q) (hb : 0 < b) :
    HasDerivAt
      (fun b : ℝ => ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-b * x ^ p))
      (-(1 / p) * (q + 1) / p * b ^ (-((q + 1) / p) - 1) * Real.Gamma ((q + 1) / p))
      b := by
  sorry
