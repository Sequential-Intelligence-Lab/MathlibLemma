import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.re_of_real_smul (K : Type*) [RCLike K] (x : ℝ) (z : K) :
    RCLike.re ((x : K) * z) = x * RCLike.re z := by
  -- Simplify the expression using the properties of the real part function and scalar multiplication.
  simp [RCLike.re, RCLike.ofReal_mul, mul_comm]
  -- Use the linearity of the real part function to separate the scalar multiplication.
  <;> simp [RCLike.re, RCLike.ofReal_mul, mul_comm]
  -- Apply the homogeneity property of the real part function.
  <;> simp [RCLike.re, RCLike.ofReal_mul, mul_comm]
  -- Simplify the expression to match the desired form.
  <;> simp [RCLike.re, RCLike.ofReal_mul, mul_comm]