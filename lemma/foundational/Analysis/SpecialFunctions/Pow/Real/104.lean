import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_div (x : ℝ) (y z : ℝ) :
    x ^ (y / z) = x ^ (y * z⁻¹) := by
  -- Use the simp tactic to simplify the expression using known properties and definitions.
  simp [div_eq_mul_inv, mul_comm, mul_left_comm]
  -- The simp tactic will apply the following simplifications:
  -- - div_eq_mul_inv: Rewrite division as multiplication by the inverse.
  -- - mul_comm: Commute the multiplication to prepare for further simplification.
  -- - mul_left_comm: Further commute the multiplication to achieve the final form.
  -- This will automatically handle the equality x^(y/z) = x^(y * z⁻¹).
  <;> simp_all
  -- The simp_all tactic will clean up any remaining simplicial goals, ensuring all assumptions are met.
  <;> linarith
  -- The linarith tactic will handle any linear arithmetic that needs to be verified, ensuring all conditions are met.
  <;> linarith
  <;> linarith
  <;> linarith
  <;> linarith
  <;> linarith