import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.im_neg (K : Type*) [RCLike K] (z : K) :
    RCLike.im (-z) = - RCLike.im z := by
  -- Use the property of the imaginary part of the negative of a complex number
  simp [RCLike.im]
  -- Simplify the expression using the properties of the imaginary part
  <;> simp [RCLike.im]
  -- Use the ring properties to simplify the expression
  <;> ring
  -- Use the properties of the conjugate of a complex number
  <;> simp [RCLike.conj]
  -- Use the ring properties again to simplify the expression
  <;> ring