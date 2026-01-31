import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_abs_self {x y : ℝ} (hx : 0 ≤ x) :
    |x| ^ y = x ^ y := by
  -- Use the definition of absolute value for non-negative x
  simp [abs_of_nonneg hx]
  -- Simplify the expression using the fact that |x| = x when x ≥ 0
  <;> simp [abs_of_nonneg hx]
  -- The expression |x|^y simplifies directly to x^y
  <;> simp [abs_of_nonneg hx]