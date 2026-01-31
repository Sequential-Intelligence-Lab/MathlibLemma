import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_eq_iff_sq_eq {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y) :
    √x = √y ↔ x = y := by
  constructor <;> intro h
  -- Prove the forward direction: if √x = √y, then x = y
  -- Use the fact that the square root function is injective for non-negative numbers
  <;> simp_all [sq_sqrt, le_refl, sq_nonneg, sub_nonneg, mul_self_nonneg]
  -- Prove the reverse direction: if x = y, then √x = √y
  -- Use the fact that if two numbers are equal, their square roots are also equal
  <;> nlinarith