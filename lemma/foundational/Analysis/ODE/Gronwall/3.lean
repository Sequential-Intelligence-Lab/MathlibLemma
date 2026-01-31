import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_mono_in_x_of_nonnegK {δ K ε x₁ x₂ : ℝ} (hK : 0 ≤ K) (hx : x₁ ≤ x₂)
    (hδ : 0 ≤ δ) (hε : 0 ≤ ε) :
    gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
  have h_main : gronwallBound δ K ε x₁ ≤ gronwallBound δ K ε x₂ := by
    by_cases hK0 : K = 0
    · -- Case: K = 0
      have h1 : gronwallBound δ K ε x₁ = δ + ε * x₁ := by
        rw [gronwallBound]
        simp [hK0]
        <;> ring_nf
      have h2 : gronwallBound δ K ε x₂ = δ + ε * x₂ := by
        rw [gronwallBound]
        simp [hK0]
        <;> ring_nf
      rw [h1, h2]
      have h3 : δ + ε * x₁ ≤ δ + ε * x₂ := by
        have h4 : ε * x₁ ≤ ε * x₂ := by
          nlinarith [hε, hx]
        linarith
      exact h3
    · -- Case: K ≠ 0
      have hK_pos : 0 < K := by
        have hK_ne_zero : K ≠ 0 := hK0
        have hK_nonneg : 0 ≤ K := hK
        -- Since K is not zero and non-negative, it must be positive.
        contrapose! hK_ne_zero
        linarith
      have h1 : K * x₁ ≤ K * x₂ := by
        nlinarith
      have h2 : Real.exp (K * x₁) ≤ Real.exp (K * x₂) := by
        apply Real.exp_le_exp.mpr
        exact h1
      have h3 : 0 ≤ δ + ε / K := by
        have h4 : 0 ≤ ε / K := by
          apply div_nonneg hε hK
        linarith
      have h4 : (δ + ε / K) * Real.exp (K * x₁) ≤ (δ + ε / K) * Real.exp (K * x₂) := by
        -- Since δ + ε / K ≥ 0 and exp(K * x₁) ≤ exp(K * x₂), the inequality follows.
        exact mul_le_mul_of_nonneg_left h2 h3
      have h5 : gronwallBound δ K ε x₁ = (δ + ε / K) * Real.exp (K * x₁) - ε / K := by
        rw [gronwallBound]
        split_ifs <;> simp_all [hK0] <;> field_simp [hK0] <;> ring_nf <;>
          (try norm_num) <;> (try linarith) <;> (try nlinarith)
        <;>
          (try {
            field_simp [hK0] at *
            <;> ring_nf at *
            <;> linarith
          })
      have h6 : gronwallBound δ K ε x₂ = (δ + ε / K) * Real.exp (K * x₂) - ε / K := by
        rw [gronwallBound]
        split_ifs <;> simp_all [hK0] <;> field_simp [hK0] <;> ring_nf <;>
          (try norm_num) <;> (try linarith) <;> (try nlinarith)
        <;>
          (try {
            field_simp [hK0] at *
            <;> ring_nf at *
            <;> linarith
          })
      rw [h5, h6]
      -- Subtract ε / K from both sides of h4 to get the final inequality.
      linarith
  exact h_main