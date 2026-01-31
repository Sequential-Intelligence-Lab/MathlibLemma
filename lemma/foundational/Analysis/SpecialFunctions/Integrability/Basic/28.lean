import Mathlib

open MeasureTheory

lemma intervalIntegrable_const_mul_exp
    {a b c : ℝ} :
    IntervalIntegrable (fun x : ℝ => c * Real.exp x) MeasureTheory.volume a b := by
  -- `Real.exp` is continuous, and multiplication by a constant is continuous
  have hcont : Continuous (fun x : ℝ => c * Real.exp x) :=
    (continuous_const.mul Real.continuous_exp)
  -- Continuous functions are interval integrable w.r.t. Lebesgue measure (`volume`)
  simpa using hcont.intervalIntegrable