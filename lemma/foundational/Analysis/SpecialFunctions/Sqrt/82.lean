import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_add_sq (x y : ℝ) (hx : 0 ≤ x) :
    √(x + y ^ 2) ^ 2 = x + y ^ 2 := by
  -- Use the property of square roots and squares for non-negative numbers
  rw [Real.sq_sqrt] <;> linarith [sq_nonneg y, hx]
  -- Ensure all arithmetic checks pass by using non-linear arithmetic
  <;> nlinarith [sq_nonneg y, hx]
  -- Simplify all expressions and ensure all arithmetic checks pass
  <;> simp_all
  <;> nlinarith [sq_nonneg y, hx]