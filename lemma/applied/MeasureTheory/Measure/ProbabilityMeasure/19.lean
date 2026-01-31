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
  -- `ProbabilityMeasure.prod` is defined so that its underlying measure
  -- is the product of the underlying measures.
  -- In mathlib this lemma is:
  --   ProbabilityMeasure.toMeasure_prod :
  --     (μ.prod ν).toMeasure = μ.toMeasure.prod ν.toMeasure
  -- We then use the standard fact that the second marginal of a product
  -- measure is the second factor:
  --   Measure.map_snd_prod (μ : Measure Ω) (ν : Measure Ω') :
  --     (μ.prod ν).map Prod.snd = ν
  simpa [ProbabilityMeasure.toMeasure_prod] using
    (Measure.map_snd_prod (μ.toMeasure) (ν.toMeasure))