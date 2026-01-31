import Mathlib

lemma variance_le_evariance {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {μ : MeasureTheory.Measure Ω} (X : Ω → ℝ) :
    (ProbabilityTheory.variance X μ : ℝ) ≤
      (ProbabilityTheory.evariance X μ).toReal := by
  sorry