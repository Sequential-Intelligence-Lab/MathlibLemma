import Mathlib

open MeasureTheory Real

/-- Integrability on `ℝ` of `exp(-b * |x|^p)` for `b > 0`, `p > 0`,
with respect to Lebesgue measure. -/
lemma Real.integrable_exp_neg_mul_abs_rpow
    {p b : ℝ} (hp : 0 < p) (hb : 0 < b) :
    Integrable (fun x : ℝ => Real.exp (-b * |x| ^ p)) := by
  sorry