import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_one_div (x : ℝ) (y : ℝ) :
    x ^ (1 / y) = x ^ (y⁻¹) := by
  -- Use the fact that y⁻¹ is the same as 1/y
  rw [one_div]
  -- Simplify the expression using the properties of real number powers
  <;> simp [rpow_def_of_pos]
  -- Simplify the expression further using algebraic properties
  <;> ring
  -- Simplify using the properties of logarithms and exponentials
  <;> simp [log_inv, log_one, mul_zero, add_zero, zero_add]
  -- Final simplification to confirm the equality
  <;> ring