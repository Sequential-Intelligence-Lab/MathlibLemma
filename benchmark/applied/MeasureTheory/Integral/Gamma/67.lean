import Mathlib

/-- General complex Gaussian moment integral. -/
lemma Complex.integral_norm_rpow_exp_neg_norm_sq
    {q : ℝ} (hq : -2 < q) :
    ∫ z : ℂ, ‖z‖ ^ q * Real.exp (-‖z‖ ^ 2) =
      Real.pi * Real.Gamma ((q + 2) / 2) := by
  sorry
