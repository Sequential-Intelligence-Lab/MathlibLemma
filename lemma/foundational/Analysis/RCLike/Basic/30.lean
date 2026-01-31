import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.normSq_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    RCLike.normSq (RCLike.ofReal x : K) = x * x := by
  -- Simplify the expression using the properties of the embedding and the definition of norm squared.
  simp [RCLike.normSq, RCLike.ofReal, mul_comm]
  -- Use the ring tactic to simplify the algebraic expression.
  <;> ring
  -- Use the norm_num tactic to handle numerical computations.
  <;> norm_num
  -- Use the aesop tactic to handle any remaining simple cases.
  <;> aesop
  -- Use the ring tactic again to ensure the expression is in the simplest form.
  <;> ring