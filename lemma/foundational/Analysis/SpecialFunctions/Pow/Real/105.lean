import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_div_natCast (x : ℝ) (y : ℝ) (n : ℕ) :
    x ^ (y / n) = x ^ (y * (n⁻¹ : ℝ)) := by
  -- Simplify the expression by recognizing that division by n is equivalent to multiplication by the reciprocal of n.
  simp [div_eq_mul_inv, mul_comm]
  -- Normalize the expression using ring operations to show the equality.
  <;> ring_nf
  -- Simplify the expression further using specific algebraic rules and properties.
  <;> simp_all [rpow_mul, rpow_inv]
  -- Normalize the expression again to achieve the final simplified form.
  <;> ring_nf