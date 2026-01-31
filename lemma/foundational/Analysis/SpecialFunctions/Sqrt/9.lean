import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_comp_self (x : ℝ) :
    √(x ^ 2) = |x| := by
  -- Consider the cases where x is non-negative or negative.
  cases' le_total 0 x with hx hx <;> simp_all [abs_of_nonneg, abs_of_nonpos, Real.sqrt_sq_eq_abs]
  -- For the non-negative case, use the fact that the square root of x squared is x.
  <;> linarith
  -- For the negative case, use the fact that the square root of x squared is -x.
  <;> linarith