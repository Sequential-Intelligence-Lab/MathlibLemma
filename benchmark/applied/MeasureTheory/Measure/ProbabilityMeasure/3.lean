import Mathlib

open MeasureTheory

/-- If a probability measure assigns mass `1` to a measurable set `s`, then it vanishes
on the complement of `s`. -/
lemma ProbabilityMeasure.measure_compl_eq_zero_of_measure_eq_one
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : ProbabilityMeasure Ω)
    {s : Set Ω} (hs : MeasurableSet s)
    (hμs : (μ : Measure Ω) s = 1) :
    (μ : Measure Ω) sᶜ = 0 := by
  sorry