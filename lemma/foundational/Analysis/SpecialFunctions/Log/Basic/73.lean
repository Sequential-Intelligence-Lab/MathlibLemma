import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.continuousAt_log_abs {x : ℝ} (hx : x ≠ 0) :
    ContinuousAt (fun t => Real.log |t|) x := by
  -- We handle the cases where x is positive or negative separately.
  cases' abs_cases x with h h <;>
    -- Use the fact that the logarithm function is continuous for positive arguments.
    simp_all [continuousAt_log]
  <;>
    -- Use the fact that the absolute value function is continuous.
    apply ContinuousAt.abs
  <;>
    -- Use the fact that the identity function is continuous.
    apply ContinuousAt.id