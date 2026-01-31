import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_add_x (δ K ε x y : ℝ) :
    gronwallBound δ K ε (x + y) =
      if K = 0 then δ + ε * (x + y)
      else δ * Real.exp (K * (x + y)) +
        ε / K * (Real.exp (K * (x + y)) - 1) := by
  split_ifs with h
  -- Case K = 0
  -- Simplify the expression when K = 0
  simp_all [gronwallBound]
  -- Case K ≠ 0
  -- Simplify the expression when K ≠ 0
  simp_all [gronwallBound, h]
  -- Simplify the expression using algebraic properties
  <;> ring
  -- Simplify the expression using properties of exponentials
  <;> simp [Real.exp_ne_zero]
  -- Normalize the expression to achieve the final form
  <;> ring_nf