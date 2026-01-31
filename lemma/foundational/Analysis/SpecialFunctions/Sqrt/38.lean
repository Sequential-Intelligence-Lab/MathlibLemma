import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_real_mul_self_nonneg {x : ℝ} (hx : 0 ≤ x) :
    Real.sqrt (x * x) = x := by
  -- Use the property of square roots and squares for non-negative numbers
  rw [Real.sqrt_eq_iff_mul_self_eq] <;> nlinarith
  -- Since x is non-negative, x * x is non-negative
  -- By the property of square roots, sqrt(x * x) = x
  <;> nlinarith
  -- This confirms that the square root of x squared is x for non-negative x
  <;> nlinarith