import Mathlib

open MeasureTheory

/-- The support of the pushforward of a probability measure is contained in the image of the
support. -/
lemma ProbabilityMeasure.support_map_subset
    {Ω Ω' : Type*}
    [TopologicalSpace Ω] [TopologicalSpace Ω']
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    [OpensMeasurableSpace Ω] [OpensMeasurableSpace Ω']
    (μ : ProbabilityMeasure Ω)
    {f : Ω → Ω'} (hf : Continuous f) :
    Measure.support ((μ : Measure Ω).map f) ⊆
      closure (f '' Measure.support (μ : Measure Ω)) := by
  sorry