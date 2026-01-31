import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_neg_of_between_zero_one {x : ℝ} (hx : 0 < x) (hx1 : x < 1) :
    Real.log x < 0 := by
  -- Use the property that the logarithm of a number less than 1 is negative.
  rw [← Real.log_one]
  -- Apply the property that if a < b, then log(a) < log(b) for 0 < a < b.
  apply Real.log_lt_log (by linarith) (by linarith)
  -- Ensure all arithmetic checks are satisfied.
  <;> linarith