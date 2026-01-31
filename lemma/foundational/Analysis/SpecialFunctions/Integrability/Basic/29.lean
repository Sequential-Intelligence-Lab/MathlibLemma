import Mathlib

open MeasureTheory

lemma intervalIntegrable_exp_add_const
    {a b c : ℝ} :
    IntervalIntegrable (fun x : ℝ => Real.exp (x + c)) (MeasureTheory.volume) a b := by
  -- First, `exp` is continuous, hence interval integrable on any finite interval.
  have h_exp : IntervalIntegrable (fun x : ℝ => Real.exp x) (MeasureTheory.volume) a b :=
    (Real.continuous_exp.intervalIntegrable a b)
  -- Multiply by the constant `Real.exp c` preserves interval integrability.
  have h_mul : IntervalIntegrable (fun x : ℝ => Real.exp x * Real.exp c)
      (MeasureTheory.volume) a b :=
    h_exp.mul_const (Real.exp c)
  -- Rewrite `exp (x + c)` as `exp x * exp c` and conclude.
  simpa [Real.exp_add, mul_comm] using h_mul