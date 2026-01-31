import Mathlib

open Real MeasureTheory

lemma intervalIntegrable_const_add_exp
    (μ : Measure ℝ) [IsLocallyFiniteMeasure μ]
    (a b c : ℝ) :
    IntervalIntegrable (fun x : ℝ => c + Real.exp x) μ a b := by
  sorry