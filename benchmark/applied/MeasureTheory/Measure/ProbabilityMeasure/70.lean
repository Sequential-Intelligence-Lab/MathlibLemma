import Mathlib

open MeasureTheory

/-- If a probability measure is invariant under a measurable transformation, then the pushforward
measure is equal to the original one. -/
lemma ProbabilityMeasure.invariant_of_measurePreserving
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : ProbabilityMeasure Ω)
    {T : Ω → Ω}
    (hT : MeasurePreserving T μ.toMeasure μ.toMeasure) :
    μ.toMeasure.map T = μ.toMeasure := by
  sorry