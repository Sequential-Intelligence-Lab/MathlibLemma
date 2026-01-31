import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_div_self (x : ℝ) (hx : 0 < x) :
    √x / √x = 1 := by
  -- Use the property that division by a non-zero number is the same as multiplication by its reciprocal.
  rw [div_eq_mul_inv]
  -- Simplify the expression using the fact that the square root of x is non-zero for x > 0.
  field_simp [sqrt_pos.mpr hx]
  -- Simplify the expression using the property of square roots and the fact that the square root of x is non-zero.
  <;> simp [sqrt_sq_eq_abs, abs_of_pos hx]
  -- Normalize the numerical expression to confirm it equals 1.
  <;> norm_num