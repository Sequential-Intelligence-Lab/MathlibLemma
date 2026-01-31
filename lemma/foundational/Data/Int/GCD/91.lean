import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.gcd_mul_self_right (a b : ℤ) :
    Int.gcd a (a * b) = |a| := by
  -- We handle the cases where `a` is non-negative and non-positive separately.
  rcases le_total 0 a with h | h <;>
  -- Simplify the expression using the properties of absolute value and gcd.
  simp_all [abs_of_nonneg, abs_of_nonpos, Int.gcd_mul_left, Int.gcd_mul_right, mul_comm]
  -- Use the `omega` tactic to solve the resulting linear arithmetic problems.
  <;> omega