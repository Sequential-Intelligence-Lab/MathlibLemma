import Mathlib

/-- Explicit expression of the integral of a power times a Gaussian on `(0,∞)`. -/
lemma Real.integral_rpow_mul_gaussian_Ioi
    {q : ℝ} (hq : -1 < q) :
    ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-x ^ 2) =
      (1 / 2) * Real.Gamma ((q + 1) / 2) := by
  sorry
