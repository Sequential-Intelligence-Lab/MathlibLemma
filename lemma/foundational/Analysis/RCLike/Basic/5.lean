import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.im_conj (K : Type*) [RCLike K] (z : K) :
    RCLike.im z = RCLike.im z := by
  -- Use the reflexive property of equality to show that im(z) = im(z).
  apply Eq.symm
  -- Simplify the expression to confirm the equality.
  <;> simp
  <;> rfl