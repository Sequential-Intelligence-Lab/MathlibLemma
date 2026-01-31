import Mathlib

/-- Gaussian integral over `ℝ` for a power times exponential. -/
lemma Real.integral_abs_rpow_mul_gaussian_univ
    {q : ℝ} (hq : -1 < q) :
    ∫ x : ℝ, |x| ^ q * Real.exp (-x ^ 2) =
      Real.Gamma ((q + 1) / 2) := by
  sorry
