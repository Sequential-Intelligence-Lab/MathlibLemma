import Mathlib

open ProbabilityTheory

universe u

lemma variance_nonneg' {Ω : Type u} {mΩ : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω) (X : Ω → ℝ) :
    0 ≤ variance X μ := by
  sorry