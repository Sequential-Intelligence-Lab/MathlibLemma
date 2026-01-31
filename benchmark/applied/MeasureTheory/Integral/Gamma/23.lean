import Mathlib

/-- Scaling in the parameter `b` for the complex norm kernel. -/
lemma Complex.integral_norm_rpow_mul_exp_neg_mul_rpow_scaling
    {p q b c : ℝ} (hp : 1 ≤ p) (hq : -2 < q) (hb : 0 < b) (hc : 0 < c) :
    ∫ x : ℂ, ‖x‖ ^ q * Real.exp (-b * ‖x‖ ^ p) =
      c ^ (q + 2) * ∫ y : ℂ, ‖y‖ ^ q * Real.exp (-b * c ^ p * ‖y‖ ^ p) := by
  sorry
