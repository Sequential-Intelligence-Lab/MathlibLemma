import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_inv_intCast (x : ℝ) (n : ℤ) :
    x ^ (n⁻¹ : ℝ) = (x ^ (1 : ℝ)) ^ (n⁻¹ : ℝ) := by
  -- Simplify the expression using the property of exponents (x^a)^b = x^(a*b)
  simp [rpow_def_of_pos, mul_comm]
  -- For any real number x and non-zero integer n, the equality holds under the given conditions.
  <;> cases' n with n
  <;> simp_all [zpow_neg, zpow_ofNat]
  <;> linarith