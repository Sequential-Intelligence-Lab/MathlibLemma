import Mathlib

open Real MeasureTheory

lemma intervalIntegrable_const_add_exp
    (μ : Measure ℝ) [IsLocallyFiniteMeasure μ]
    (a b c : ℝ) :
    IntervalIntegrable (fun x : ℝ => c + Real.exp x) μ a b := by
  -- The function x ↦ c + exp x is continuous
  have hcont : Continuous (fun x : ℝ => c + Real.exp x) :=
    continuous_const.add Real.continuous_exp
  -- Continuous functions are interval integrable under a locally finite measure
  simpa using hcont.intervalIntegrable (μ := μ) (a := a) (b := b)