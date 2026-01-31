import Mathlib

/-- Integrability of `‖x‖^q * exp (-‖x‖^p)` on `ℂ`. -/
lemma Complex.integrable_norm_rpow_mul_exp_neg_rpow
    {p q : ℝ} (hp : 1 ≤ p) (hq : -2 < q) :
    MeasureTheory.Integrable
      (fun x : ℂ => (‖x‖ : ℝ) ^ q * Real.exp (-(‖x‖ : ℝ) ^ p))
      MeasureTheory.volume := by
  sorry