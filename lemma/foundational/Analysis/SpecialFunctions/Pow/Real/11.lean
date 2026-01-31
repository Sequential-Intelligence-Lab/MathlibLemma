import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_abs (x y : ℝ) :
    |x| ^ y = (abs x) ^ y := by
  -- Consider the cases where x is non-negative, non-positive, or zero.
  cases' le_total 0 x with hx hx <;> simp_all [abs_of_nonneg, abs_of_nonpos, Real.rpow_def_of_pos]
  -- For each case, simplify the expressions using the definitions of absolute value and exponentiation.
  -- Case 1: x ≥ 0
  -- Here, |x| = x, so |x|^y = x^y and (abs x)^y = x^y.
  -- Case 2: x ≤ 0
  -- Here, |x| = -x, so |x|^y = (-x)^y and (abs x)^y = (-x)^y.
  -- In both cases, |x|^y = (abs x)^y.
  <;> linarith