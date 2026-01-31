import Mathlib

open MeasureTheory

lemma variance_indicator_eq
    {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}
    {s : Set Ω} (hs : MeasurableSet s) :
    ProbabilityTheory.variance (s.indicator (fun _ : Ω => (1 : ℝ))) μ =
      (μ s).toReal * (1 - (μ s).toReal) := by
  sorry