import Mathlib

open MeasureTheory

/-- The marginal of a product probability measure on the second coordinate is the original
measure. -/
lemma ProbabilityMeasure.snd_marginal_prod
    {Ω Ω' : Type*} [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : ProbabilityMeasure Ω)
    (ν : ProbabilityMeasure Ω') :
    ((μ.prod ν).toMeasure.map Prod.snd)
      = ν.toMeasure := by
  sorry