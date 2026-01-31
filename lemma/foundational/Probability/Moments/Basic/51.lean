import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma mgf_symm_neg
    {Ω : Type*} [MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) (X : Ω → ℝ) :
    ProbabilityTheory.mgf (fun ω => -X ω) μ =
      fun t ↦ ProbabilityTheory.mgf (fun ω => X ω) μ (-t) := by
  ext t
  -- Use the definition of MGF and properties of expected value to show the equality.
  simp [ProbabilityTheory.mgf, neg_mul, neg_neg]
  -- The `simp` tactic simplifies the expression using the definitions and properties of MGF and expected value.
  -- Specifically, it uses the fact that `E[e^{t(-X)}] = E[e^{-tX}]` and `M_X(-t) = E[e^{-tX}]`.
  <;> rfl