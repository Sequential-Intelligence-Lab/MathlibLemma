import Mathlib

lemma variance_le_evariance {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {μ : MeasureTheory.Measure Ω} (X : Ω → ℝ) :
    (ProbabilityTheory.variance X μ : ℝ) ≤
      (ProbabilityTheory.evariance X μ).toReal := by
  -- `variance` is defined in terms of `evariance` using `toReal`,
  -- so after unfolding the definition the inequality is just `a ≤ a`.
  simpa [ProbabilityTheory.variance] using
    (le_rfl :
      (ProbabilityTheory.evariance X μ).toReal
        ≤ (ProbabilityTheory.evariance X μ).toReal)