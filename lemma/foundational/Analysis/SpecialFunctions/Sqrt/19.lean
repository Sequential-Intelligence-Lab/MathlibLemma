import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_mul_self_cancel (x : ℝ) (hx : 0 ≤ x) :
    √x * √x = x := by
  -- Use the property of square roots that states √x * √x = x for x ≥ 0.
  rw [← Real.sqrt_sq (by assumption : 0 ≤ x)]
  -- Simplify the expression using the fact that √x * √x = x.
  <;> simp [hx]
  -- Use linear arithmetic to confirm the result.
  <;> linarith