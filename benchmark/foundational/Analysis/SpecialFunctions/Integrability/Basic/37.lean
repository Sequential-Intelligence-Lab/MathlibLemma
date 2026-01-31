import Mathlib

open MeasureTheory
open Interval

lemma intervalIntegrable_log_abs_comp
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {f : ℝ → ℝ}
    (hf : ContinuousOn f [[a, b]])
    (h0 : ∀ x ∈ [[a, b]], f x ≠ 0) :
    IntervalIntegrable (fun x => Real.log |f x|) μ a b := by
  sorry