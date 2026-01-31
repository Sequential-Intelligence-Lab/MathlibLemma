import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_le_log_of_abs_le_abs {x y : ℝ}
    (hx : 0 < |x|) (hy : 0 < |y|) (hxy : |x| ≤ |y|) :
    Real.log |x| ≤ Real.log |y| := by
  -- Use the property of the natural logarithm function that if 0 < a ≤ b, then ln a ≤ ln b.
  apply Real.log_le_log
  -- Ensure that |x| and |y| are positive, which is given by hx and hy.
  <;> simp_all [abs_pos]
  -- Use the given inequality |x| ≤ |y| to conclude the proof.
  <;> linarith