import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.summable_geometric_of_abs_lt_one (r : ℝ) (hr : |r| < 1) :
    Summable fun n : ℕ => r ^ n := by
  have h₁ : Summable (fun n : ℕ => (|r| : ℝ) ^ n) := by
    have h₁₁ : 0 ≤ (|r| : ℝ) := abs_nonneg r
    have h₁₂ : (|r| : ℝ) < 1 := by exact_mod_cast hr
    -- Use the known result about the summability of geometric series with ratio < 1
    exact summable_geometric_of_lt_one h₁₁ h₁₂
  
  have h₂ : Summable (fun n : ℕ => |(r : ℝ) ^ n|) := by
    have h₂₁ : (fun n : ℕ => |(r : ℝ) ^ n|) = (fun n : ℕ => (|r| : ℝ) ^ n) := by
      funext n
      rw [abs_pow]
      <;> simp [abs_of_nonneg (abs_nonneg r)]
    rw [h₂₁]
    exact h₁
  
  have h₃ : Summable (fun n : ℕ => (r : ℝ) ^ n) := by
    -- Use the fact that if the series of absolute values is summable, then the original series is summable
    have h₃₁ : Summable (fun n : ℕ => (r : ℝ) ^ n) := by
      -- Apply the theorem that if the series of absolute values is summable, then the original series is summable
      refine' Summable.of_abs _
      -- The series of absolute values is summable by h₂
      exact h₂
    -- The result follows directly from the above
    exact h₃₁
  
  exact h₃