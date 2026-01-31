import Mathlib

lemma intervalIntegrable_exp_mul_cos {a b : ℝ} :
    IntervalIntegrable (fun x => Real.exp x * Real.cos x)
      (MeasureTheory.volume : MeasureTheory.Measure ℝ) a b := by
  sorry