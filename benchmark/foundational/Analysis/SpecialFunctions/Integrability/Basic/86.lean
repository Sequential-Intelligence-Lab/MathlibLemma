import Mathlib

open MeasureTheory

lemma intervalIntegrable_of_integrableOn_Icc
    {μ : Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b : ℝ} {f : ℝ → ℝ}
    (h : IntegrableOn f (Set.Icc (min a b) (max a b)) μ) :
    IntervalIntegrable f μ a b := by
  sorry