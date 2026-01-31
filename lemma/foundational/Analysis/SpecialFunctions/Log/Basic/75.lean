import Mathlib

open MeasureTheory

lemma Real.aestronglyMeasurable_log {α} [MeasurableSpace α] (μ : Measure α)
    {f : α → ℝ} (hf : AEStronglyMeasurable f μ)
    (h₀ : ∀ᵐ x ∂μ, f x ≠ 0) :
    AEStronglyMeasurable (fun x => Real.log (f x)) μ := by
  -- `f` is a.e. measurable
  have hf_ae : AEMeasurable f μ := hf.aemeasurable
  -- `log ∘ f` is a.e. measurable since `Real.log` is measurable
  have h_log_ae : AEMeasurable (fun x => Real.log (f x)) μ :=
    Real.measurable_log.comp_aemeasurable hf_ae
  -- and thus a.e. strongly measurable
  exact h_log_ae.aestronglyMeasurable