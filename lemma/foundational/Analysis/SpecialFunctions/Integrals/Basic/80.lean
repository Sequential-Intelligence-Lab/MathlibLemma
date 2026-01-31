import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_pow_on_unit_interval (n : ℕ) :
    ∫ x in (0 : ℝ)..1, x^n = 1 / (n + 1) := by
  -- Use the Fundamental Theorem of Calculus to evaluate the integral.
  rw [integral_pow]
  <;> simp
  <;> norm_num
  <;> ring
  <;> norm_num
  <;> linarith