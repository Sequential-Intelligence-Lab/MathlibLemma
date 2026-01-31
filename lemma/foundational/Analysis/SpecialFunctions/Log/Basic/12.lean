import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_mul_ge_add_log_add_log {x y : ℝ} (hx : 1 ≤ x) (hy : 1 ≤ y) :
    Real.log (x * y) ≥ Real.log x + Real.log y := by
  -- Use the property of logarithms that log(xy) = log(x) + log(y)
  have h : Real.log (x * y) = Real.log x + Real.log y := by
    rw [Real.log_mul (by positivity) (by positivity)]
  -- Substitute the equality into the inequality
  rw [h]
  -- Since log(xy) = log(x) + log(y), the inequality log(xy) ≥ log(x) + log(y) holds as an equality
  <;> linarith