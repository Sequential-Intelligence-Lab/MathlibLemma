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
  sorry