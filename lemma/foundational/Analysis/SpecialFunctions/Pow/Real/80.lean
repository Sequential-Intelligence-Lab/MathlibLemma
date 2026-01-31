import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_sub_sub {x : ℝ} (hx : 0 < x) (y z : ℝ) :
    x ^ (y - z) = x ^ y / x ^ z := by
  -- Use the exponent subtraction rule: x^(a - b) = x^a / x^b
  rw [rpow_sub hx]
  -- Simplify the expression using the properties of division and powers
  <;> simp_all [rpow_sub, div_eq_mul_inv]