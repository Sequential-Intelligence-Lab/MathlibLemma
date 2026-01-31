import Mathlib

open MeasureTheory

lemma intervalIntegrable_rpow_mul
    {a b r s : ℝ}
    {μ : MeasureTheory.Measure ℝ}
    [MeasureTheory.IsLocallyFiniteMeasure μ]
    (hr : 0 ≤ r ∨ (0 : ℝ) ∉ Set.Icc a b)
    (hs : 0 ≤ s ∨ (0 : ℝ) ∉ Set.Icc a b) :
    IntervalIntegrable (fun x => x ^ r * x ^ s) μ a b := by
  sorry