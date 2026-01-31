import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.Gamma_le_of_integral_le
    {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    (hint : ∀ t > 0, t ^ (a - 1) * Real.exp (-t) ≤ t ^ (b - 1) * Real.exp (-t)) :
    Real.Gamma a ≤ Real.Gamma b := by
  have h_two_pos : (2 : ℝ) > 0 := by
    norm_num
  
  have h_half_pos : (1 / 2 : ℝ) > 0 := by
    norm_num
  
  have h_a_le_b : a ≤ b := by
    have h₁ : (2 : ℝ) ^ (a - 1) * Real.exp (-(2 : ℝ)) ≤ (2 : ℝ) ^ (b - 1) * Real.exp (-(2 : ℝ)) := hint 2 (by norm_num)
    have h₂ : Real.exp (-(2 : ℝ)) > 0 := Real.exp_pos _
    have h₃ : (2 : ℝ) ^ (a - 1) ≤ (2 : ℝ) ^ (b - 1) := by
      -- Divide both sides by the positive number exp(-2)
      have h₄ : (2 : ℝ) ^ (a - 1) * Real.exp (-(2 : ℝ)) ≤ (2 : ℝ) ^ (b - 1) * Real.exp (-(2 : ℝ)) := h₁
      have h₅ : 0 < Real.exp (-(2 : ℝ)) := h₂
      have h₆ : (2 : ℝ) ^ (a - 1) * Real.exp (-(2 : ℝ)) / Real.exp (-(2 : ℝ)) ≤ (2 : ℝ) ^ (b - 1) * Real.exp (-(2 : ℝ)) / Real.exp (-(2 : ℝ)) := by
        gcongr
      have h₇ : (2 : ℝ) ^ (a - 1) * Real.exp (-(2 : ℝ)) / Real.exp (-(2 : ℝ)) = (2 : ℝ) ^ (a - 1) := by
        field_simp [h₅.ne']
        <;> ring_nf
        <;> field_simp [h₅.ne']
        <;> ring_nf
      have h₈ : (2 : ℝ) ^ (b - 1) * Real.exp (-(2 : ℝ)) / Real.exp (-(2 : ℝ)) = (2 : ℝ) ^ (b - 1) := by
        field_simp [h₅.ne']
        <;> ring_nf
        <;> field_simp [h₅.ne']
        <;> ring_nf
      rw [h₇] at h₆
      rw [h₈] at h₆
      exact h₆
    -- Take the natural logarithm of both sides and use the fact that the logarithm is monotonically increasing
    have h₄ : Real.log ((2 : ℝ) ^ (a - 1)) ≤ Real.log ((2 : ℝ) ^ (b - 1)) := by
      apply Real.log_le_log
      · positivity
      · exact h₃
    -- Simplify using the logarithm power rule
    have h₅ : (a - 1) * Real.log 2 ≤ (b - 1) * Real.log 2 := by
      have h₅₁ : Real.log ((2 : ℝ) ^ (a - 1)) = (a - 1) * Real.log 2 := by
        rw [Real.log_rpow (by norm_num : (2 : ℝ) > 0)]
      have h₅₂ : Real.log ((2 : ℝ) ^ (b - 1)) = (b - 1) * Real.log 2 := by
        rw [Real.log_rpow (by norm_num : (2 : ℝ) > 0)]
      rw [h₅₁, h₅₂] at h₄
      exact h₄
    -- Since log 2 > 0, we can divide both sides by log 2
    have h₆ : Real.log 2 > 0 := Real.log_pos (by norm_num)
    have h₇ : a - 1 ≤ b - 1 := by
      by_contra h
      have h₈ : a - 1 > b - 1 := by linarith
      have h₉ : (a - 1) * Real.log 2 > (b - 1) * Real.log 2 := by
        have h₁₀ : Real.log 2 > 0 := Real.log_pos (by norm_num)
        nlinarith
      linarith
    linarith
  
  have h_a_ge_b : a ≥ b := by
    have h₁ : (1 / 2 : ℝ) ^ (a - 1) * Real.exp (-(1 / 2 : ℝ)) ≤ (1 / 2 : ℝ) ^ (b - 1) * Real.exp (-(1 / 2 : ℝ)) := hint (1 / 2) (by norm_num)
    have h₂ : Real.exp (-(1 / 2 : ℝ)) > 0 := Real.exp_pos _
    have h₃ : (1 / 2 : ℝ) ^ (a - 1) ≤ (1 / 2 : ℝ) ^ (b - 1) := by
      -- Divide both sides by the positive number exp(-1/2)
      have h₄ : (1 / 2 : ℝ) ^ (a - 1) * Real.exp (-(1 / 2 : ℝ)) ≤ (1 / 2 : ℝ) ^ (b - 1) * Real.exp (-(1 / 2 : ℝ)) := h₁
      have h₅ : 0 < Real.exp (-(1 / 2 : ℝ)) := h₂
      have h₆ : (1 / 2 : ℝ) ^ (a - 1) * Real.exp (-(1 / 2 : ℝ)) / Real.exp (-(1 / 2 : ℝ)) ≤ (1 / 2 : ℝ) ^ (b - 1) * Real.exp (-(1 / 2 : ℝ)) / Real.exp (-(1 / 2 : ℝ)) := by
        gcongr
      have h₇ : (1 / 2 : ℝ) ^ (a - 1) * Real.exp (-(1 / 2 : ℝ)) / Real.exp (-(1 / 2 : ℝ)) = (1 / 2 : ℝ) ^ (a - 1) := by
        field_simp [h₅.ne']
        <;> ring_nf
        <;> field_simp [h₅.ne']
        <;> ring_nf
      have h₈ : (1 / 2 : ℝ) ^ (b - 1) * Real.exp (-(1 / 2 : ℝ)) / Real.exp (-(1 / 2 : ℝ)) = (1 / 2 : ℝ) ^ (b - 1) := by
        field_simp [h₅.ne']
        <;> ring_nf
        <;> field_simp [h₅.ne']
        <;> ring_nf
      rw [h₇] at h₆
      rw [h₈] at h₆
      exact h₆
    -- Take the natural logarithm of both sides and use the fact that the logarithm is monotonically increasing
    have h₄ : Real.log ((1 / 2 : ℝ) ^ (a - 1)) ≤ Real.log ((1 / 2 : ℝ) ^ (b - 1)) := by
      apply Real.log_le_log
      · -- Prove that (1 / 2 : ℝ) ^ (a - 1) > 0
        positivity
      · -- Prove that (1 / 2 : ℝ) ^ (a - 1) ≤ (1 / 2 : ℝ) ^ (b - 1)
        exact h₃
    -- Simplify using the logarithm power rule
    have h₅ : (a - 1) * Real.log (1 / 2 : ℝ) ≤ (b - 1) * Real.log (1 / 2 : ℝ) := by
      have h₅₁ : Real.log ((1 / 2 : ℝ) ^ (a - 1)) = (a - 1) * Real.log (1 / 2 : ℝ) := by
        rw [Real.log_rpow (by norm_num : (1 / 2 : ℝ) > 0)]
      have h₅₂ : Real.log ((1 / 2 : ℝ) ^ (b - 1)) = (b - 1) * Real.log (1 / 2 : ℝ) := by
        rw [Real.log_rpow (by norm_num : (1 / 2 : ℝ) > 0)]
      rw [h₅₁, h₅₂] at h₄
      exact h₄
    -- Since log (1 / 2) < 0, we can divide both sides by log (1 / 2) and reverse the inequality
    have h₆ : Real.log (1 / 2 : ℝ) < 0 := Real.log_neg (by norm_num) (by norm_num)
    have h₇ : a - 1 ≥ b - 1 := by
      by_contra h
      have h₈ : a - 1 < b - 1 := by linarith
      have h₉ : (a - 1) * Real.log (1 / 2 : ℝ) > (b - 1) * Real.log (1 / 2 : ℝ) := by
        have h₁₀ : Real.log (1 / 2 : ℝ) < 0 := h₆
        nlinarith
      linarith
    linarith
  
  have h_a_eq_b : a = b := by
    linarith
  
  have h_main : Real.Gamma a ≤ Real.Gamma b := by
    rw [h_a_eq_b]
    <;>
    linarith
  
  exact h_main