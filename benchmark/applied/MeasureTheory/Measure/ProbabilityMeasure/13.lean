import Mathlib

open MeasureTheory

/-- A probability measure has integral of indicator of `s` equal to the measure of `s`. -/
lemma ProbabilityMeasure.integral_indicator_one
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    {s : Set Ω} (hs : MeasurableSet s) :
    ∫ x, (s.indicator (fun _ => (1 : ℝ)) x) ∂((μ : Measure Ω)) =
      ((μ : Measure Ω) s).toReal := by
  sorry