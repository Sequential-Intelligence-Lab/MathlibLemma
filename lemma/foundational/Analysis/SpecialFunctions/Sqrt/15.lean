import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_sq_eq_abs (x : ℝ) :
    √(x ^ 2) = |x| := by
  -- Consider the cases where x is non-negative and where x is non-positive.
  cases' le_total 0 x with hx hx <;> simp_all [abs_of_nonneg, abs_of_nonpos, Real.sqrt_sq_eq_abs]
  <;> linarith