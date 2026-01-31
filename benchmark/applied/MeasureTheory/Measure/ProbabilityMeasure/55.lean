import Mathlib

open MeasureTheory

/-- On a countable type, a probability measure is a weighted sum of Dirac masses. -/
lemma ProbabilityMeasure.eq_tsum_dirac
    {Ω : Type*} [Countable Ω] [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    (μ : ProbabilityMeasure Ω) :
    (μ : Measure Ω) =
      Measure.sum (fun x : Ω => (μ : Measure Ω) {x} • Measure.dirac x) := by
  sorry