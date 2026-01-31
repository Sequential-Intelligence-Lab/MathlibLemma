import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_sub_sq (x y : ℝ) (hxy : y ≤ x) :
    √(x - y) ^ 2 = x - y := by
  -- Given y ≤ x, we know x - y is non-negative.
  have h : 0 ≤ x - y := by linarith
  -- By the property of square roots and squares, (√(x - y))² = x - y.
  rw [Real.sq_sqrt (by linarith : 0 ≤ x - y)]
  -- Simplify the expression to confirm the equality.
  <;> simp_all
  <;> linarith