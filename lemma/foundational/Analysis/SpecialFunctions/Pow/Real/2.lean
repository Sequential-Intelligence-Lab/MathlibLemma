import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_inv_two (x : ℝ) (hx : 0 ≤ x) : x ^ (2⁻¹ : ℝ) = √x := by
  -- Use the property that raising a number to the power of 1/2 is equivalent to taking its square root.
  simp [Real.rpow_def_of_pos (by linarith : (0 : ℝ) < 2), Real.sqrt_eq_rpow]
  -- Simplify the expression using the properties of exponents and roots.
  <;> simp_all [Real.rpow_def_of_pos (by linarith : (0 : ℝ) < 2), Real.sqrt_eq_rpow]
  -- Normalize the expression to confirm the equality.
  <;> ring_nf
  -- Use linear arithmetic to confirm the equality.
  <;> linarith