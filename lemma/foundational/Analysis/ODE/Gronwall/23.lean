import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_sub (δ K ε x y : ℝ) :
    gronwallBound δ K ε (x - y) =
      if K = 0 then δ + ε * (x - y)
      else δ * Real.exp (K * (x - y)) +
        ε / K * (Real.exp (K * (x - y)) - 1) := by
  split_ifs with h
  -- Case 1: K = 0
  -- When K = 0, the exponential term simplifies to 1, and the bound reduces to a linear function.
  simp_all [gronwallBound]
  -- Case 2: K ≠ 0
  -- When K ≠ 0, the bound involves exponential terms due to the influence of K.
  simp_all [gronwallBound]
  <;> field_simp [h]
  <;> ring
  <;> norm_num
  <;> linarith