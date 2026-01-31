import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma bernoulliFun_zero_eq_one :
    bernoulliFun 0 = fun _ : ℝ => 1 := by
  -- We need to show that the Bernoulli function at 0 is the constant function 1.
  apply funext
  intro x
  -- Simplify the expression using the definition of the Bernoulli function.
  simp [bernoulliFun]
  -- Use the fact that the Bernoulli number B0 is 1.
  <;> simp [bernoulliNumber_zero]
  -- Simplify the resulting expression to confirm it is 1.
  <;> simp