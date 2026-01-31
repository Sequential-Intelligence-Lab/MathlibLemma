import Mathlib

open MeasureTheory

/-- If a finite measure is a probability measure, its normalized measure equals itself. -/
lemma FiniteMeasure.normalize_eq_self_of_isProbability
    {Ω : Type*} [MeasurableSpace Ω] [hΩ : Nonempty Ω]
    (μ : MeasureTheory.FiniteMeasure Ω)
    [IsProbabilityMeasure (μ : Measure Ω)] :
    μ.normalize.toFiniteMeasure = μ := by
  sorry