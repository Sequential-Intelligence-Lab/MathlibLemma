import Mathlib

open MeasureTheory

lemma intervalIntegrable_zpow_of_nonneg
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {n : ℤ}
    (hpos : 0 ≤ n) :
    IntervalIntegrable (fun x => x ^ n) μ a b := by
  sorry