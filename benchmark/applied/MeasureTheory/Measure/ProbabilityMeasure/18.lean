import Mathlib

open MeasureTheory

/-- The marginal of a product probability measure on the first coordinate is the original
measure. -/
lemma ProbabilityMeasure.fst_marginal_prod
    {Ω Ω' : Type*} [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : ProbabilityMeasure Ω)
    (ν : ProbabilityMeasure Ω') :
    ((μ.prod ν : ProbabilityMeasure (Ω × Ω')) :
      Measure (Ω × Ω')).map Prod.fst
      = (μ : Measure Ω) := by
  sorry