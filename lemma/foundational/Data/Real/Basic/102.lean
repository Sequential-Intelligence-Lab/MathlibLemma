import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Real.mul_add_one_le_add_one_pow' {a : ℝ} (ha : 0 ≤ a) (b : ℕ) :
    (a * b + 1 : ℝ) ≤ (a + 1) ^ b := by 
  have h1 : ∀ (n : ℕ), (a + 1 : ℝ) ^ n ≥ 1 + a * n := by
    intro n
    induction n with
    | zero =>
      norm_num
    | succ k ih =>
      simp [pow_succ, pow_zero, mul_add, add_mul] at ih ⊢
      nlinarith [sq_nonneg (a : ℝ), sq_nonneg ((a : ℝ) * k), sq_nonneg ((a : ℝ) - 1), mul_nonneg ha (show 0 ≤ (a : ℝ) by linarith), mul_nonneg ha (show 0 ≤ (k : ℝ) by positivity)]
  have h2 : (a + 1 : ℝ) ^ b ≥ 1 + a * b := h1 b
  nlinarith