import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_inv_natCast (x : ℝ) (n : ℕ) :
    x ^ (n⁻¹ : ℝ) = (x ^ (1 : ℝ)) ^ (n⁻¹ : ℝ) := by
  -- Handle the case when n = 0 by ensuring n is positive
  cases n with
  | zero => simp
  | succ n =>
    -- Simplify the expression using the properties of real number exponents
    simp [rpow_mul, mul_one, Nat.cast_succ]
  -- Simplify the expression further to match the left-hand side
  <;> simp [rpow_mul, mul_one, Nat.cast_succ]