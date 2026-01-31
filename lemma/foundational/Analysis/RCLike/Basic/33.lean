import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.normSq_inv' (K : Type*) [RCLike K] (z : K) :
    RCLike.normSq z⁻¹ = (RCLike.normSq z)⁻¹ := by
  -- Use the property of the norm squared of the inverse of an element in a ring with complex-like structure.
  rw [RCLike.normSq_inv]
  -- Simplify the expression using the fact that the norm squared of an element is non-zero.
  <;> simp [RCLike.normSq_ne_zero]