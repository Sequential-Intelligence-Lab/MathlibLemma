import Mathlib

/-- A probability measure is zero on any countable union of null sets. -/
lemma ProbabilityMeasure.measure_iUnion_null
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    {ι : Type*} [Countable ι] {s : ι → Set Ω}
    (h : ∀ i, (μ : MeasureTheory.Measure Ω) (s i) = 0) :
    (μ : MeasureTheory.Measure Ω) (⋃ i, s i) = 0 := by
  sorry