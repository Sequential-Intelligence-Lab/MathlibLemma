import Mathlib

/-- A probability measure composed with a measurable isomorphism yields another probability
measure given by the pullback. -/
def ProbabilityMeasure.comp_measurableEquiv
    {Ω Ω' : Type*} [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : MeasureTheory.ProbabilityMeasure Ω')
    (e : Ω ≃ᵐ Ω') :
    MeasureTheory.ProbabilityMeasure Ω :=
  by
    sorry