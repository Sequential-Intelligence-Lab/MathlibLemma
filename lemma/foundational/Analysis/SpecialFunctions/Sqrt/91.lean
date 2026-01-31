import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_sup_eq (x y : ℝ) (hx : 0 ≤ x) (hy : 0 ≤ y) :
    √(max x y) = max (√x) (√y) := by
  -- Consider the cases where x ≥ y or y > x
  cases' le_total x y with h h <;> simp_all [max_eq_left, max_eq_right, Real.sqrt_le_sqrt]
  <;> nlinarith
  <;> nlinarith