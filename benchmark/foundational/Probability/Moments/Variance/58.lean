import Mathlib

lemma evariance_ae_eq_of_sub_ae_zero
    {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {μ : MeasureTheory.Measure Ω} {X Y : Ω → ℝ}
    (h : X - Y =ᵐ[μ] fun _ => 0) :
    ProbabilityTheory.evariance X μ = ProbabilityTheory.evariance Y μ := by
  sorry