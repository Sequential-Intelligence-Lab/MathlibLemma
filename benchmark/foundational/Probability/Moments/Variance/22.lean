import Mathlib

open ProbabilityTheory MeasureTheory

lemma evariance_comp_equiv
    {Ω Ω' : Type*}
    [mΩ  : MeasurableSpace Ω]
    [mΩ' : MeasurableSpace Ω']
    (μ : Measure Ω) (e : Ω ≃ᵐ Ω') (X : Ω' → ℝ) :
    ProbabilityTheory.evariance (fun ω => X (e ω)) μ =
      ProbabilityTheory.evariance X (μ.map e) := by
  sorry