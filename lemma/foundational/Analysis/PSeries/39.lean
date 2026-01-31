import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.not_summable_one_div_nat_pow_le_one {p : ℕ} (hp : p ≤ 1) :
    ¬ Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) := by
  -- Assume the series is summable and derive a contradiction.
  intro h
  -- Use the fact that the series is summable to get a tendsto_atTop_zero result.
  have h₁ := h.tendsto_atTop_zero
  -- Simplify the expression to show that the integral diverges.
  simp_all [one_div]
  -- Use norm_num to handle numerical computations.
  <;> norm_num
  -- Use linarith to handle linear arithmetic and derive a contradiction.
  <;> linarith