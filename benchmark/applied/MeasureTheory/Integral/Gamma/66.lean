import Mathlib

/-- A complex version of the Gaussian moment integral. -/
lemma Complex.integral_norm_sq_exp_neg_norm_sq :
    ∫ z : ℂ, ‖z‖ ^ 2 * Real.exp (-‖z‖ ^ 2) =
      Real.pi := by
  sorry
