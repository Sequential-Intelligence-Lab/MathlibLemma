import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.re_mul_self_add_im_mul_self (K : Type*) [RCLike K] (z : K) :
    RCLike.re z * RCLike.re z + RCLike.im z * RCLike.im z = RCLike.normSq z := by
  -- Use the definition of norm squared and simplify using the properties of the real and imaginary parts.
  simp [RCLike.normSq, mul_add, mul_comm, mul_left_comm, sq]
  -- Normalize the expression to ensure it matches the expected form.
  <;> ring_nf
  -- Use the property that the real part squared plus the imaginary part squared equals the norm squared.
  <;> simp [RCLike.re_sq_add_im_sq]