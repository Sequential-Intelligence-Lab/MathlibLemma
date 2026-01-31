import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_add_lt_log_add {x y z : ℝ}
    (hx : 0 < x) (hy : 0 < y) (hz : 0 < z) (hxy : x < y) :
    Real.log (x + z) < Real.log (y + z) := by
  -- Use the fact that the logarithm function is strictly increasing for positive arguments.
  apply Real.log_lt_log (by linarith) (by linarith)
  -- The first `by linarith` proves that `x + z < y + z` given `x < y` and `z > 0`.
  -- The second `by linarith` proves that `x + z > 0` and `y + z > 0` given `x, y, z > 0`.
  <;> linarith