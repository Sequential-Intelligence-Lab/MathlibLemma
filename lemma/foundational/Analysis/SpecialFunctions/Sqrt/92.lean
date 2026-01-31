import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_inf_eq (x y : ℝ) (hx : 0 ≤ x) (hy : 0 ≤ y) :
    √(min x y) = min (√x) (√y) := by
  -- Consider the two cases for the minimum function
  cases' le_total x y with h h <;> simp_all [min_eq_left, min_eq_right, Real.sqrt_le_sqrt]
  <;> nlinarith