import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_add_log_exp (x y : ℝ) :
    exp x ^ y = exp (x * y) := by
  -- Use the property of exponents that (a^b)^c = a^(b*c)
  rw [rpow_def_of_pos]
  -- Simplify using the fact that exp(x) is positive
  <;> simp [exp_pos]
  -- Simplify the expression using algebraic properties
  <;> ring
  -- Simplify further using the properties of exp and log
  <;> simp [exp_log]
  -- Final simplification to confirm the equality
  <;> ring