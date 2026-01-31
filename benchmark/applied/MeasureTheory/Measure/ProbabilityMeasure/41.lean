import Mathlib

open MeasureTheory

/-- If `f` is almost everywhere equal to `g` under a probability measure, then their pushforward
measures coincide. -/
lemma ProbabilityMeasure.map_congr_ae
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : ProbabilityMeasure Ω)
    {f g : Ω → Ω'}
    (hf : AEMeasurable f (μ : Measure Ω))
    (hg : AEMeasurable g (μ : Measure Ω))
    (hfg : f =ᵐ[(μ : Measure Ω)] g) :
    (μ : Measure Ω).map f = (μ : Measure Ω).map g := by
  sorry