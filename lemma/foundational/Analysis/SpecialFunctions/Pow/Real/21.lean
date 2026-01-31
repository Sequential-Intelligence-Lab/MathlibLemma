import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_le_rpow_of_ge_one {x y z : ℝ}
    (hx : 1 ≤ x) (hxy : y ≤ z) :
    x ^ y ≤ x ^ z := by
  -- Use the property of real power functions that if the base is at least 1 and the exponent is non-decreasing, the result is non-decreasing.
  apply Real.rpow_le_rpow_of_exponent_le
  -- Ensure the base is at least 1.
  <;> linarith
  -- Ensure the exponent is non-decreasing.
  <;> assumption