import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_log_rpow (x y : ℝ) (hx : 0 < x) (hy : y ≠ 0) :
    (x ^ y) ^ (1 / y) = x := by
  have h1 : (x ^ y) ^ (1 / y) = x ^ (y * (1 / y)) := by
    rw [← Real.rpow_mul (le_of_lt hx)]
    <;> ring_nf
    <;> field_simp [hy]
    <;> ring_nf
  
  have h2 : y * (1 / y) = 1 := by
    have h2₁ : y ≠ 0 := hy
    field_simp [h2₁]
    <;> ring
  
  have h3 : x ^ (y * (1 / y)) = x ^ (1 : ℝ) := by
    rw [h2]
    <;> simp [Real.rpow_one]
  
  have h4 : x ^ (1 : ℝ) = x := by
    simp [Real.rpow_one]
  
  have h5 : (x ^ y) ^ (1 / y) = x := by
    calc
      (x ^ y) ^ (1 / y) = x ^ (y * (1 / y)) := h1
      _ = x ^ (1 : ℝ) := h3
      _ = x := h4
  
  exact h5