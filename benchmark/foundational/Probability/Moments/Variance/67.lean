import Mathlib

lemma variance_nonneg_var {Ω : Type*} [mΩ : MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) (X : Ω → ℝ) :
    0 ≤ ProbabilityTheory.variance X μ := by
  sorry