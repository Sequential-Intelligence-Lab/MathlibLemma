import Mathlib

open MeasureTheory

/-- A probability measure is determined by its values on a generating π-system. -/
lemma ProbabilityMeasure.eq_of_generateFrom_eq
    {Ω : Type*} [MeasurableSpace Ω]
    {P : Set (Set Ω)} (hP : IsPiSystem P)
    (hgen : ‹MeasurableSpace Ω› = MeasurableSpace.generateFrom P)
    {μ ν : MeasureTheory.ProbabilityMeasure Ω}
    (h : ∀ s ∈ P, (μ : Measure Ω) s = (ν : Measure Ω) s) :
    μ = ν := by
  sorry