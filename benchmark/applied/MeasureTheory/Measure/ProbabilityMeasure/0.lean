import Mathlib

/-- If two probability measures agree on all measurable sets, then they are equal
as `ProbabilityMeasure`s. -/
lemma ProbabilityMeasure.ext_mble
    {Ω : Type*} [MeasurableSpace Ω]
    {μ ν : MeasureTheory.ProbabilityMeasure Ω}
    (h : ∀ s : Set Ω, MeasurableSet s →
      (μ : MeasureTheory.Measure Ω) s = (ν : MeasureTheory.Measure Ω) s) :
    μ = ν := by
  sorry