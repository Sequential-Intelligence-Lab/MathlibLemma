import Mathlib

open MeasureTheory

/-- The `map` of a measure under a constant function is the Dirac measure. -/
lemma Measure.map_const
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : Measure Ω)
    (x : Ω') :
    Measure.map (fun _ : Ω => x) μ = Measure.dirac x := by
  sorry

/-- The `map` of a probability measure under a constant function is the Dirac measure. -/
lemma ProbabilityMeasure.map_const
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : ProbabilityMeasure Ω)
    (x : Ω') :
    Measure.map (fun _ : Ω => x) μ.toMeasure = Measure.dirac x := by
  sorry