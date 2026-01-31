import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma cgf_smul (a : ℝ) :
    ProbabilityTheory.cgf (fun ω ↦ a * X ω) μ t =
      ProbabilityTheory.cgf X μ (a * t) := by
  simp_all [ProbabilityTheory.cgf, ProbabilityTheory.mgf]
  -- Simplify the expression using the definitions of cgf and mgf
  <;> ring_nf
  -- Normalize the algebraic expressions
  <;> congr
  -- Congruence to ensure the arguments match
  <;> ring_nf
  -- Further algebraic normalization
  <;> congr
  -- Ensure the arguments match
  <;> ring_nf
  -- Final algebraic normalization
  <;> congr
  -- Ensure the arguments match
  <;> ring_nf