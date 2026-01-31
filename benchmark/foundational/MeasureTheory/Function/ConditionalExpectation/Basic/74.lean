import Mathlib

open MeasureTheory

lemma condExp_average_eq_integral {α}
    {m : MeasurableSpace α} {μ : Measure α} [IsProbabilityMeasure μ]
    (f : α → ℝ) :
    (fun _ : α ↦ ∫ x, f x ∂μ) = fun _ : α ↦ ∫ x, f x ∂μ := by
  sorry