import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_sqrt_at_pos {x : ℝ} (hx : 0 < x) :
    deriv Real.sqrt x = 1 / (2 * √x) := by
  -- Use the definition of the derivative and basic limit properties.
  rw [deriv_sqrt]
  <;> simp [*]
  <;> norm_num
  <;> linarith
  <;> assumption
  <;> simp [*]
  <;> norm_num
  <;> linarith
  <;> assumption