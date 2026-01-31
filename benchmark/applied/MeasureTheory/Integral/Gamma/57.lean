import Mathlib

/-- A Cauchy–Schwarz type inequality for the complex Gamma kernels. -/
lemma Complex.integral_norm_rpow_mul_exp_neg_rpow_cs
    {p q₁ q₂ : ℝ} (hp : 1 ≤ p) (hq₁ : -2 < q₁) (hq₂ : -2 < q₂) :
    (∫ z : ℂ, ‖z‖ ^ ((q₁ + q₂) / 2) * Real.exp (-‖z‖ ^ p)) ^ 2 ≤
      (∫ z : ℂ, ‖z‖ ^ q₁ * Real.exp (-‖z‖ ^ p)) *
      (∫ z : ℂ, ‖z‖ ^ q₂ * Real.exp (-‖z‖ ^ p)) := by
  sorry
