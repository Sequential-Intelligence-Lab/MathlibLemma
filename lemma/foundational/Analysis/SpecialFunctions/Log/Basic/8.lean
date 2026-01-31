import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_intCast_le_log_intCast {m n : ℤ} (hm : 0 < m) (h : m ≤ n) :
    Real.log (m : ℝ) ≤ Real.log (n : ℝ) := by
  -- Convert the integers m and n to real numbers for the logarithm function.
  norm_cast at h
  -- Use the property that the logarithm function is strictly increasing.
  apply Real.log_le_log
  -- Ensure that m and n are positive, which is given by hm.
  <;> simp_all [Int.cast_le]
  -- Use linear arithmetic to confirm the inequalities.
  <;> linarith