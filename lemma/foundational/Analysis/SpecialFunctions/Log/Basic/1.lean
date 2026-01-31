import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_natCast_succ (n : ℕ) :
    Real.log (Nat.succ n) = Real.log (n + 1) := by
  -- Simplify the expression using known lemmas about type casting and arithmetic operations.
  simp [Nat.cast_succ, Nat.cast_add, Nat.cast_one]
  -- Use the ring tactic to simplify the expression further, ensuring the equality holds.
  <;> ring
  -- Apply the logarithm function to both sides, confirming the equality.
  <;> apply Real.log