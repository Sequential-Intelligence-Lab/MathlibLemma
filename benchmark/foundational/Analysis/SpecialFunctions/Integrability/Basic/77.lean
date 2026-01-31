import Mathlib

open MeasureTheory Set

lemma intervalIntegrable_cpow_re
    (μ : Measure ℝ) [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {r : ℂ}
    (h : 0 ≤ r.re ∨ (0 : ℝ) ∉ Icc (min a b) (max a b)) :
    IntervalIntegrable (fun x : ℝ => ((x : ℂ) ^ r).re) μ a b := by
  sorry