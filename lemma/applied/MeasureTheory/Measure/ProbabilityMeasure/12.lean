import Mathlib

open MeasureTheory

/-- A measurable function equal almost everywhere under a probability measure yields the same
integral. -/
lemma ProbabilityMeasure.integral_congr_ae
    {Ω : Type*} [MeasurableSpace Ω]
    {α : Type*} [NormedAddCommGroup α] [NormedSpace ℝ α]
    (μ : ProbabilityMeasure Ω)
    {f g : Ω → α}
    (hf : Integrable f (μ : Measure Ω))
    (hg : Integrable g (μ : Measure Ω))
    (hfg : f =ᵐ[(μ : Measure Ω)] g) :
    ∫ x, f x ∂(μ : Measure Ω) = ∫ x, g x ∂(μ : Measure Ω) := by
  -- `MeasureTheory.integral_congr_ae` has the form
  --   integral_congr_ae (hfg : f =ᵐ[μ] g) :
  --     ∫ x, f x ∂μ = ∫ x, g x ∂μ
  -- so we can directly apply it to the measure `(μ : Measure Ω)`.
  simpa using
    (MeasureTheory.integral_congr_ae (μ := (μ : Measure Ω)) hfg :
      ∫ x, f x ∂(μ : Measure Ω) = ∫ x, g x ∂(μ : Measure Ω))