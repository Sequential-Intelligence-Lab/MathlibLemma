import Mathlib

/-- If `f` is invertible and both `f` and `f⁻¹` are measurable, then the pushforward and pullback
operations for a probability measure are inverses.

This lemma is stated in a way that typechecks; the proof is omitted with `sorry`. -/
lemma ProbabilityMeasure.map_symm
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (f : Ω → Ω')
    (hf : Measurable f) :
    (μ : MeasureTheory.Measure Ω).map f =
      (μ.map hf.aemeasurable : MeasureTheory.ProbabilityMeasure Ω') := by
  sorry