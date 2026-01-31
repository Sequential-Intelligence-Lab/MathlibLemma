import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LipschitzOn.uniformContinuousOn_Icc
    {f : ℝ → ℝ} {K : NNReal} {a b : ℝ}
    (hK : LipschitzOnWith K f (Set.Icc a b)) :
    UniformContinuousOn f (Set.Icc a b) := by
  have h_main : UniformContinuousOn f (Set.Icc a b) := by
    by_cases hK0 : (K : ℝ) = 0
    · -- Case: K = 0
      have hK' : ∀ (x y : ℝ), x ∈ Set.Icc a b → y ∈ Set.Icc a b → f x = f y := by
        intro x y hx hy
        have h₁ : dist (f x) (f y) ≤ (K : ℝ) * dist x y := by
          apply hK.dist_le_mul
          <;> simp_all [Set.mem_Icc]
          <;> (try norm_num) <;> (try linarith)
        have h₂ : (K : ℝ) * dist x y = 0 := by
          rw [hK0]
          <;> simp
        have h₃ : dist (f x) (f y) ≤ 0 := by linarith
        have h₄ : dist (f x) (f y) ≥ 0 := by apply dist_nonneg
        have h₅ : dist (f x) (f y) = 0 := by linarith
        have h₆ : f x = f y := by
          simp [Real.dist_eq, abs_eq_zero] at h₅ ⊢
          <;> linarith
        exact h₆
      -- f is constant on [a, b]
      have h₁ : UniformContinuousOn f (Set.Icc a b) := by
        -- Since f is constant, it is uniformly continuous
        refine' Metric.uniformContinuousOn_iff.mpr _
        intro ε εpos
        use 1
        constructor
        · norm_num
        · intro x hx y hy hxy
          have h₂ : f x = f y := hK' x y hx hy
          rw [h₂]
          <;> simp [Real.dist_eq]
          <;> linarith
      exact h₁
    · -- Case: K > 0
      have hK_pos : (0 : ℝ) < (K : ℝ) := by
        have h₁ : (0 : ℝ) ≤ (K : ℝ) := by exact mod_cast NNReal.coe_nonneg K
        have h₂ : (K : ℝ) ≠ 0 := hK0
        contrapose! h₂
        linarith
      -- Use the Lipschitz condition to find δ
      refine' Metric.uniformContinuousOn_iff.mpr _
      intro ε εpos
      use ε / (K : ℝ)
      constructor
      · -- Prove that ε / K > 0
        exact div_pos εpos hK_pos
      · -- Prove that for any x, y ∈ [a, b] with dist x y < δ, dist (f x) (f y) < ε
        intro x hx y hy hxy
        have h₁ : dist (f x) (f y) ≤ (K : ℝ) * dist x y := by
          apply hK.dist_le_mul
          <;> simp_all [Set.mem_Icc]
          <;> (try norm_num) <;> (try linarith)
        have h₂ : (K : ℝ) * dist x y < (K : ℝ) * (ε / (K : ℝ)) := by
          have h₃ : dist x y < ε / (K : ℝ) := by
            simpa [Real.dist_eq] using hxy
          have h₄ : 0 < (K : ℝ) := hK_pos
          nlinarith
        have h₃ : (K : ℝ) * (ε / (K : ℝ)) = ε := by
          field_simp [hK_pos.ne']
          <;> ring
          <;> field_simp [hK_pos.ne']
          <;> linarith
        have h₄ : (K : ℝ) * dist x y < ε := by linarith
        have h₅ : dist (f x) (f y) < ε := by linarith
        simpa [Real.dist_eq] using h₅
  exact h_main