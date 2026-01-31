import Mathlib

open MeasureTheory

lemma intervalIntegrable_log_comp {μ : Measure ℝ}
    {a b : ℝ} {f : ℝ → ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (h0 : ∀ x ∈ Set.Icc a b, 0 < f x) :
    IntervalIntegrable (fun x => Real.log (f x)) μ a b := by
  sorry