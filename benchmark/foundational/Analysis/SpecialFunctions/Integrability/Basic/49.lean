import Mathlib

open MeasureTheory

lemma intervalIntegrable_cos_pow
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} (n : ℕ) :
    IntervalIntegrable (fun x => Real.cos x ^ n) μ a b := by
  sorry