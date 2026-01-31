import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.eq_of_pow_two_eq {x y : ℝ} (h : x ^ 2 = y ^ 2) (hx : 0 ≤ x) (hy : 0 ≤ y) :
    x = y := by
  -- Use the fact that the square root of x^2 is x and the square root of y^2 is y, given that x and y are non-negative.
  apply le_antisymm
  -- Apply the lemma that if a ≤ b and b ≤ a, then a = b.
  -- Use the fact that x ≤ y because x^2 = y^2 and both are non-negative.
  <;> nlinarith [sq_nonneg (x - y), sq_nonneg (x + y)]
  -- Use nonlinear arithmetic to derive the inequalities.
  -- Specifically, use the non-negativity of squares to show that x ≤ y and y ≤ x.
  <;> nlinarith [sq_nonneg (x - y), sq_nonneg (x + y)]