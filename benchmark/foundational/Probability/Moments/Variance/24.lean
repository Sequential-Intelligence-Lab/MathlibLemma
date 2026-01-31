import Mathlib

open ProbabilityTheory MeasureTheory

lemma evariance_ae_eq_of_eq_on
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω)
    {X Y : Ω → ℝ} (h : X =ᵐ[μ] Y) :
    ProbabilityTheory.evariance X μ = ProbabilityTheory.evariance Y μ := by
  sorry