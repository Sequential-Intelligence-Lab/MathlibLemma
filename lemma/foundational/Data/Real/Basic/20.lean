import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mk_const_nat (n : ℕ) :
    Real.mk (CauSeq.const abs n) = (n : ℝ) := by
  -- Use the fact that the equivalence class of a constant sequence is the same as the natural number itself.
  rw [Real.mk_const]
  -- Simplify the expression to confirm the equality.
  <;> simp
  -- Normalize the numerical values to ensure correctness.
  <;> norm_num
  -- Use linear arithmetic to finalize the proof.
  <;> linarith