import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mk_const_int (z : ℤ) :
    Real.mk (CauSeq.const abs z) = (z : ℝ) := by
  -- Use the fact that the constant sequence is already a Cauchy sequence.
  rw [Real.mk_const]
  -- Simplify the expression using the properties of the embedding.
  <;> simp
  -- Normalize the numerical values to confirm the equality.
  <;> norm_num
  -- Use linear arithmetic to finalize the proof.
  <;> linarith