import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_sq_eq_self_of_nonneg {x : ℝ} (hx : 0 ≤ x) :
    √(x ^ 2) = x := by
  -- Use the property of square roots that states √(a^2) = a for a ≥ 0
  rw [Real.sqrt_sq hx]
  -- Simplify the expression using the assumption hx : 0 ≤ x
  <;> simp [hx]
  -- Use linear arithmetic to confirm the equality
  <;> linarith