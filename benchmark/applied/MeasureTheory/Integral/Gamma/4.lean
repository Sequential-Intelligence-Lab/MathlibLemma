import Mathlib

/-- Integrability on `ℝ` of `|x|^q * exp(-|x|^p)` under the Gamma conditions. -/
lemma Real.integrable_abs_rpow_mul_exp_neg_abs_rpow
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    MeasureTheory.Integrable
      (fun x : ℝ => |x| ^ q * Real.exp (-(|x|) ^ p))
      (MeasureTheory.volume) := by
  sorry