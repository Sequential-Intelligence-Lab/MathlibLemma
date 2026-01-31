import Mathlib

/-- Continuity in the parameter `p` of the Gamma-type integral on `(0,∞)`. -/
lemma Real.continuous_param_integral_rpow_mul_exp_neg_rpow
    (p0 : ℝ) (hp0 : 0 < p0) :
    ContinuousAt (fun p : ℝ =>
      ∫ x in Set.Ioi (0 : ℝ), x ^ (p0 - 1) * Real.exp (-(x ^ p))) p0 := by
  sorry
