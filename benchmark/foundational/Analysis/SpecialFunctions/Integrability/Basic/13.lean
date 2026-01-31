import Mathlib

open MeasureTheory

/-- Interval integrability of `x ^ r * c` on `[a, b]` under a basic condition. -/
lemma intervalIntegrable_rpow_const_mul
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b r c : ℝ}
    (h : 0 ≤ r ∨ (0 : ℝ) ∉ Set.Icc a b) :
    IntervalIntegrable (fun x => x ^ r * c) μ a b := by
  sorry