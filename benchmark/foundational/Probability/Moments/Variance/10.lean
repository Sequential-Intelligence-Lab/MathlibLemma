import Mathlib

open MeasureTheory ProbabilityTheory

lemma evariance_eq_zero_iff_expectation_eq
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω) {X : Ω → ℝ} (hX : AEMeasurable X μ) :
    ProbabilityTheory.evariance X μ = 0 ↔
      X =ᵐ[μ] fun _ => ∫ x, X x ∂μ := by
  sorry