import Mathlib

/-- The complex Gamma kernel is radially symmetric. -/
lemma Complex.radial_symm_norm_rpow_mul_exp_neg_rpow
    {p q : ℝ} :
    (fun z : ℂ => ‖z‖ ^ q * Real.exp (-‖z‖ ^ p)) =
      fun z : ℂ => (fun r : ℝ => r ^ q * Real.exp (-(r ^ p))) ‖z‖ := by
  sorry
