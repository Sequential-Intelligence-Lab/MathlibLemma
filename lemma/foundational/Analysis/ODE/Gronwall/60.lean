import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_mono {δ K ε x₁ x₂ : ℝ} (hx : x₁ ≤ x₂)
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hK : 0 ≤ K) :
    gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
  unfold gronwallBound
  split_ifs with hK₀
  · gcongr
  · have hK_pos : 0 < K := hK.lt_of_ne (Ne.symm hK₀)
    gcongr

lemma gronwallBound_compare_x
    {δ K ε x₁ x₂ : ℝ} (hx : x₁ ≤ x₂)
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hK : 0 ≤ K) :
    gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
  have h_main : gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
    by_cases hK0 : K = 0
    · -- Case: K = 0
      have h1 : gronwallBound δ K ε x₁ = δ + ε * x₁ := by
        rw [gronwallBound]
        simp [hK0]
      have h2 : gronwallBound δ K ε x₂ = δ + ε * x₂ := by
        rw [gronwallBound]
        simp [hK0]
      rw [h1, h2]
      -- Since ε ≥ 0 and x₁ ≤ x₂, we have ε * x₁ ≤ ε * x₂
      have h3 : ε * x₁ ≤ ε * x₂ := by
        nlinarith
      -- Adding δ to both sides preserves the inequality
      nlinarith
    · -- Case: K ≠ 0
      have hK_pos : 0 < K := by
        by_contra h
        have h' : K = 0 := by
          linarith
        contradiction
      -- Use the exponential form of Gronwall bound
      have h1 : gronwallBound δ K ε x₁ = δ * Real.exp (K * x₁) + ε / K * (Real.exp (K * x₁) - 1) := by
        rw [gronwallBound]
        split_ifs
        <;> field_simp [hK0] at *
      have h2 : gronwallBound δ K ε x₂ = δ * Real.exp (K * x₂) + ε / K * (Real.exp (K * x₂) - 1) := by
        rw [gronwallBound]
        split_ifs <;> simp_all
      rw [h1, h2]
      -- Prove that K * x₁ ≤ K * x₂
      have h3 : K * x₁ ≤ K * x₂ := by
        nlinarith
      -- Prove that exp(K * x₁) ≤ exp(K * x₂)
      have h4 : Real.exp (K * x₁) ≤ Real.exp (K * x₂) := Real.exp_le_exp.mpr h3
      -- Prove that δ * exp(K * x₁) ≤ δ * exp(K * x₂)
      have h5 : δ * Real.exp (K * x₁) ≤ δ * Real.exp (K * x₂) := by
        exact mul_le_mul_of_nonneg_left h4 hδ
      -- Prove that exp(K * x₁) - 1 ≤ exp(K * x₂) - 1
      have h6 : Real.exp (K * x₁) - 1 ≤ Real.exp (K * x₂) - 1 := by
        linarith
      -- Prove that ε / K ≥ 0
      have h7 : 0 ≤ ε / K := by
        apply div_nonneg hε
        linarith
      -- Prove that ε / K * (exp(K * x₁) - 1) ≤ ε / K * (exp(K * x₂) - 1)
      have h8 : ε / K * (Real.exp (K * x₁) - 1) ≤ ε / K * (Real.exp (K * x₂) - 1) := by
        exact mul_le_mul_of_nonneg_left h6 h7
      -- Add the two inequalities to get the final result
      linarith
  exact h_main
