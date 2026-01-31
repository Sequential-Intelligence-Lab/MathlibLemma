import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_comp_add (δ K ε a x : ℝ) :
    gronwallBound δ K ε (x + a) =
      if K = 0 then δ + ε * (x + a)
      else δ * Real.exp (K * (x + a)) + ε / K * (Real.exp (K * (x + a)) - 1) := by
  -- Simplify the expression by considering the cases where K is 0 or not 0.
  simp [gronwallBound, add_comm, mul_comm, mul_assoc, mul_left_comm]
  -- Use the `aesop` tactic to automatically solve the remaining goals.
  <;> aesop
  <;> aesop
  <;> aesop