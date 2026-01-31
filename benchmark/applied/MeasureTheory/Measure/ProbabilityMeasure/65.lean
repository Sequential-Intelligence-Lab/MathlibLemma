import Mathlib

open MeasureTheory

/-- If two probability measures are mutually absolutely continuous,
then they agree on null sets. -/
lemma ProbabilityMeasure.null_sets_eq_of_equiv
    {Ω : Type*} [MeasurableSpace Ω]
    {μ ν : ProbabilityMeasure Ω}
    (h : (μ : Measure Ω) ≪ (ν : Measure Ω) ∧ (ν : Measure Ω) ≪ (μ : Measure Ω)) :
    {s : Set Ω | (μ : Measure Ω) s = 0}
      = {s : Set Ω | (ν : Measure Ω) s = 0} := by
  sorry