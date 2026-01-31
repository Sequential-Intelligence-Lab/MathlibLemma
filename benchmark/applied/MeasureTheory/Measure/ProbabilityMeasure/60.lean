import Mathlib

/-- A probability measure on a compact metric space is Radon (modeled here
as being finite on the whole space). -/
lemma ProbabilityMeasure.isRadon
    {Ω : Type*} [TopologicalSpace Ω] [CompactSpace Ω]
    [MeasurableSpace Ω] [BorelSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω) :
    (μ : MeasureTheory.Measure Ω) Set.univ < ⊤ := by
  sorry