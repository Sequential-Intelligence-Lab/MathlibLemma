import Mathlib

open MeasureTheory

lemma Real.aestronglyMeasurable_log {α} [MeasurableSpace α] (μ : Measure α)
    {f : α → ℝ} (hf : AEStronglyMeasurable f μ)
    (h₀ : ∀ᵐ x ∂μ, f x ≠ 0) :
    AEStronglyMeasurable (fun x => Real.log (f x)) μ := by
  sorry