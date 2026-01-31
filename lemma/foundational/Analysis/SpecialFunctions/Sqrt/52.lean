import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_mem_Icc (x : ℝ) (hx : 0 ≤ x) :
    √x ∈ Set.Icc 0 (max 1 x) := by
  -- We need to show that sqrt(x) is within the interval [0, max(1, x)]
  constructor
  -- First, we show that sqrt(x) is non-negative
  -- This is a fundamental property of the square root function
  exact Real.sqrt_nonneg x
  -- Next, we show that sqrt(x) is less than or equal to max(1, x)
  -- We consider two cases based on the value of x
  cases' le_total 1 x with h h <;> simp_all [Set.Icc, max_eq_left, max_eq_right]
  -- Case 1: x ≥ 1
  -- Here, max(1, x) = x, and we need to show sqrt(x) ≤ x
  -- This is true because x ≥ 1 implies x ≥ sqrt(x)
  all_goals
    nlinarith [sq_sqrt (by linarith : 0 ≤ x), sq_nonneg (x - 1)]
  -- Case 2: x < 1
  -- Here, max(1, x) = 1, and we need to show sqrt(x) ≤ 1
  -- This is true because x < 1 implies sqrt(x) ≤ 1
  <;> nlinarith [sq_sqrt (by linarith : 0 ≤ x), sq_nonneg (x - 1)]