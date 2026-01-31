import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.sqrt_eq_rpow_two_inv (x : ℝ) (hx : 0 ≤ x) : √x = x ^ (2⁻¹ : ℝ) := by
  -- We need to show that √x = x^(2⁻¹). We start by simplifying the right-hand side.
  have h : x ^ (2⁻¹ : ℝ) = x ^ (1 / 2 : ℝ) := by
    -- Simplify the exponent 2⁻¹ to 1/2.
    norm_num
  rw [h]
  -- Now we need to show that √x = x^(1/2).
  rw [Real.sqrt_eq_rpow]
  -- Using the property of real numbers, we know that √x = x^(1/2).
  <;> linarith