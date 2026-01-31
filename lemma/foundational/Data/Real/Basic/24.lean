import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mk_neg_mk (f : CauSeq ℚ abs) :
    -Real.mk f = Real.mk (-f) := by
  -- Use the property of negation in the context of real numbers and Cauchy sequences.
  rw [Real.mk_neg]
  -- Simplify the expression using the properties of negation and equivalence.
  <;> simp [neg_eq_iff_eq_neg]
  -- Use the Aesop tactic to handle any remaining logical implications.
  <;> aesop