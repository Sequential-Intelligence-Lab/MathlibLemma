import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_natCast_le_log_natCast {m n : ℕ} (hm : 0 < m) (h : m ≤ n) :
    Real.log (m : ℝ) ≤ Real.log (n : ℝ) := by
  -- Apply the property of the logarithm function being strictly increasing.
  apply Real.log_le_log
  -- Ensure that the arguments to the logarithm function are positive.
  <;> norm_cast
  -- Use the given inequality m ≤ n and the positivity of m to satisfy the conditions for the logarithm function.
  <;> linarith