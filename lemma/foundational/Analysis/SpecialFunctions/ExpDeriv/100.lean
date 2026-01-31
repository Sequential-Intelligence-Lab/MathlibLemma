import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.summable_exp_series (x : ℝ) :
    Summable fun n : ℕ => x ^ n / Nat.factorial n := by
  -- Use the ratio test to show that the series converges absolutely.
  refine' Summable.congr (summable_pow_div_factorial x) fun n => _
  -- Simplify the expression to match the form required by the ratio test.
  simp [Nat.factorial]