import Mathlib

lemma intervalIntegrable_cos_sq
    {μ : MeasureTheory.Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b : ℝ} :
    IntervalIntegrable (fun x => Real.cos x ^ 2) μ a b := by
  sorry