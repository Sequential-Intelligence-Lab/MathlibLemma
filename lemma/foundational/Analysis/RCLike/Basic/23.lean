import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.im_of_real_smul (K : Type*) [RCLike K] (x : ℝ) (z : K) :
    RCLike.im ((x : K) * z) = x * RCLike.im z := by
  -- Use the property of scalar multiplication and the imaginary part from the RCLike structure.
  simp [RCLike.im, RCLike.re, mul_assoc, mul_comm, mul_left_comm]
  -- Simplify the expression using the properties of multiplication and scalar multiplication.
  -- This step leverages the fact that scalar multiplication distributes over the imaginary part.
  <;> ring
  -- Normalize the expression to ensure it matches the expected form.
  -- This step is crucial to confirm that the simplified expression is indeed equal to x * RCLike.im z.
  <;> norm_cast