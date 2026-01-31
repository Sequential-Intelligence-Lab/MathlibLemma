import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_shift (δ K ε a x : ℝ) :
    gronwallBound δ K ε (x - a) =
      if K = 0 then δ + ε * (x - a)
      else δ * Real.exp (K * (x - a)) +
        ε / K * (Real.exp (K * (x - a)) - 1) := by
  -- Simplify the expression using the definition of gronwallBound and properties of Real.exp.
  simp [gronwallBound, Real.exp_zero, mul_zero, zero_add, mul_one, sub_zero]
  -- Consider the case when K = 0 and simplify accordingly.
  <;> by_cases h : K = 0 <;> simp [h, mul_zero, zero_add, mul_one, sub_zero]
  -- For K ≠ 0, apply the exponential function properties and algebraic manipulations.
  <;> simp [Real.exp_ne_zero, mul_comm]
  <;> ring
  <;> field_simp [h]
  <;> ring