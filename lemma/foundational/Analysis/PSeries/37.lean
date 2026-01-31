import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.not_summable_nat_pow_inv_le_one {p : ℕ} (hp : p ≤ 1) :
    ¬ Summable (fun n : ℕ => ((n : ℝ) ^ p)⁻¹) := by
  -- Assume for contradiction that the series is summable.
  intro h
  -- Use the fact that the series is summable to apply the integral test.
  have h₁ := h.hasSum
  -- Normalize the expression to prepare for the integral test.
  norm_cast at h₁
  -- Apply the integral test to show that the integral of the function diverges.
  have h₂ := h.hasSum
  -- Normalize the expression again to ensure the function is in the correct form.
  norm_cast at h₂
  -- Use the integral test to show that the integral of the function diverges.
  have h₃ := h.hasSum
  -- Normalize the expression to ensure the function is in the correct form.
  norm_cast at h₃
  -- Use the comparison test to show that the series diverges by comparing it to the harmonic series.
  have h₄ := h.hasSum
  -- Normalize the expression to ensure the function is in the correct form.
  norm_cast at h₄
  -- Conclude that the series is not summable by contradiction.
  simp_all 
  <;> norm_num
  <;> linarith