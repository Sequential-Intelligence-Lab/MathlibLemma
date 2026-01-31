import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_lt_log_add {x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    Real.log x < Real.log (x + y) := by
  -- Since x and y are positive, x + y is also positive and greater than x.
  have h : 0 < x + y := by linarith
  -- Apply the property of the natural logarithm being strictly increasing.
  apply Real.log_lt_log (by linarith) (by linarith)
  -- Use linarith to handle the arithmetic and inequalities.
  <;> linarith