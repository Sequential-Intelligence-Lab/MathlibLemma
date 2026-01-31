import Mathlib

lemma evariance_equiv_of_support_eq
    {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
    (h : μ = ν) (X : Ω → ℝ) :
    ProbabilityTheory.evariance X μ = ProbabilityTheory.evariance X ν := by
  sorry