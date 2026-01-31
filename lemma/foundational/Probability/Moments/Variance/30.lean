import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma evariance_equiv_of_support_eq
    {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
    (h : μ = ν) (X : Ω → ℝ) :
    ProbabilityTheory.evariance X μ = ProbabilityTheory.evariance X ν := by
  -- Given that μ = ν, we can substitute ν for μ in the expression for variance.
  rw [h]
  -- The variance of X with respect to ν is the same as the variance of X with respect to μ because μ = ν.
  <;> rfl