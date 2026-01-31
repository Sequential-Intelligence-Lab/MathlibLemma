import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_pow_two (x : ℝ) :
    √(x ^ 2) = |x| := by
  -- Consider the cases where x is non-negative or non-positive.
  rcases le_total 0 x with hx | hx
  -- Case 1: x is non-negative.
  -- If x is non-negative, then |x| = x, and √(x^2) = x.
  { rw [abs_of_nonneg hx, sqrt_sq hx] }
  -- Case 2: x is non-positive.
  -- If x is non-positive, then |x| = -x, and √(x^2) = -x.
  { rw [abs_of_nonpos hx, sqrt_sq_eq_abs]
    -- Simplify the expression using the fact that x is non-positive.
    <;> simp [hx] }