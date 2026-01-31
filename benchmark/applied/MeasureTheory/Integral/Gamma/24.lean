import Mathlib

/-- Integrability of `‖x‖^q * exp(-b‖x‖^p)` on `ℂ`. -/
lemma Complex.integrable_norm_rpow_mul_exp_neg_mul_rpow
    {p q b : ℝ} (hp : 1 ≤ p) (hq : -2 < q) (hb : 0 < b) :
    MeasureTheory.Integrable (fun x : ℂ => ‖x‖ ^ q * Real.exp (-b * ‖x‖ ^ p))
      (α := ℂ) (μ := MeasureTheory.volume) := by
  sorry

/-- Integrability of `‖x‖^q * exp(-b‖x‖^p)` on `ℂ`. Variant lemma. -/
lemma Complex.integrable_norm_rpow_mul_exp_neg_mul_rpow'
    {p q b : ℝ} (hp : 1 ≤ p) (hq : -2 < q) (hb : 0 < b) :
    MeasureTheory.Integrable (fun x : ℂ => ‖x‖ ^ q * Real.exp (-b * ‖x‖ ^ p))
      (α := ℂ) (μ := MeasureTheory.volume) := by
  sorry