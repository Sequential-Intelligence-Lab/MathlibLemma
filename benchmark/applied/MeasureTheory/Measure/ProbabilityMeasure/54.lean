import Mathlib

/-- A probability measure on a discrete countable type is determined by its values on points. -/
lemma ProbabilityMeasure.ext_omega
    {Ω : Type*} [Countable Ω] [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    {μ ν : MeasureTheory.ProbabilityMeasure Ω}
    (h : ∀ x : Ω, (μ : MeasureTheory.Measure Ω) {x} = (ν : MeasureTheory.Measure Ω) {x}) :
    μ = ν := by
  sorry