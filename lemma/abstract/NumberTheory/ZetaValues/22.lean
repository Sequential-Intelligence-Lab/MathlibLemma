import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem algebra_253879 (k : ℕ) :
    ∃ C, ∀ n : ℤ, n ≠ 0 → ‖bernoulliFourierCoeff k n‖ ≤ C / (‖(n:ℂ)‖^k) := by
  use (k ! : ℝ) / (2 * Real.pi) ^ k
  intro n hn
  have h1 : ‖bernoulliFourierCoeff k n‖ = (k ! : ℝ) / ((2 * Real.pi * ‖(n : ℂ)‖) ^ k) := by
    sorry
  rw [h1]
  have h2 : (2 * Real.pi * ‖(n : ℂ)‖ : ℝ) ^ k = (2 * Real.pi) ^ k * (‖(n : ℂ)‖ ^ k : ℝ) := by
    ring_nf
  rw [h2]
  have h3 : (k ! : ℝ) / ((2 * Real.pi) ^ k * (‖(n : ℂ)‖ ^ k : ℝ)) ≤ (k ! : ℝ) / (2 * Real.pi) ^ k / (‖(n : ℂ)‖ ^ k : ℝ) := by
    have h4 : (k ! : ℝ) / ((2 * Real.pi) ^ k * (‖(n : ℂ)‖ ^ k : ℝ)) = (k ! : ℝ) / (2 * Real.pi) ^ k / (‖(n : ℂ)‖ ^ k : ℝ) := by
      field_simp
      all_goals ring_nf
    linarith [h4]
  linarith [h3]