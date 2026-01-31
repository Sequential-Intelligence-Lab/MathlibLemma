import Mathlib

open MeasureTheory

/-- The pushforward of a Dirac probability measure under a measurable function is again Dirac. -/
lemma ProbabilityMeasure.map_dirac
    {Ω Ω' : Type*} [MeasurableSpace Ω] [MeasurableSpace Ω']
    {f : Ω → Ω'} {x : Ω} (hf : AEMeasurable f (Measure.dirac x)) :
    (Measure.dirac x : Measure Ω).map f
      = Measure.dirac (f x) := by
  sorry