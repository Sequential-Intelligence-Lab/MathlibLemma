import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.gcd_mul_left_cancel {a b c : ℤ} (hc : c ≠ 0) :
    Int.gcd (c * a) (c * b) = |c| * Int.gcd a b := by
  -- Handle the case when c is negative by using the absolute value of c.
  cases' le_total 0 c with hc hc <;> simp_all [abs_of_nonneg, abs_of_nonpos, Int.gcd_mul_left, Int.gcd_mul_right]
  <;> norm_num
  <;> linarith