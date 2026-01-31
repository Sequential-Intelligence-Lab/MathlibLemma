import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma EuclideanSpace.single_eq_iff
    {𝕜 ι : Type*} [RCLike 𝕜] [Fintype ι] [DecidableEq ι]
    {i j : ι} {a b : 𝕜} :
    EuclideanSpace.single i a = EuclideanSpace.single j b ↔
      (i = j ∧ a = b) ∨ (a = 0 ∧ b = 0) := by
  have h_imp : EuclideanSpace.single i a = EuclideanSpace.single j b → (i = j ∧ a = b) ∨ (a = 0 ∧ b = 0) := by
    intro h
    by_cases h_ij : i = j
    · -- Case: i = j
      have h_ab : a = b := by
        have h₁ : (EuclideanSpace.single i a) i = (EuclideanSpace.single j b) i := by rw [h]
        simpa [h_ij, EuclideanSpace.single_apply] using h₁
      exact Or.inl ⟨h_ij, h_ab⟩
    · -- Case: i ≠ j
      have h_a_zero : a = 0 := by
        have h₁ : (EuclideanSpace.single i a) i = (EuclideanSpace.single j b) i := by rw [h]
        have h₂ : (EuclideanSpace.single i a) i = a := by simp [EuclideanSpace.single_apply]
        have h₃ : (EuclideanSpace.single j b) i = 0 := by
          simp [EuclideanSpace.single_apply, h_ij]
          <;> aesop
        rw [h₂, h₃] at h₁
        simpa using h₁
      have h_b_zero : b = 0 := by
        have h₁ : (EuclideanSpace.single i a) j = (EuclideanSpace.single j b) j := by rw [h]
        have h₂ : (EuclideanSpace.single i a) j = 0 := by
          simp [EuclideanSpace.single_apply, h_ij]
          <;> aesop
        have h₃ : (EuclideanSpace.single j b) j = b := by simp [EuclideanSpace.single_apply]
        rw [h₂, h₃] at h₁
        -- Use the fact that 0 = b implies b = 0
        apply eq_of_sub_eq_zero
        have h₄ : (0 : 𝕜) - b = 0 := by
          rw [← sub_eq_zero]
          linear_combination h₁
        simpa using h₄
      exact Or.inr ⟨h_a_zero, h_b_zero⟩
  
  have h_conv : ((i = j ∧ a = b) ∨ (a = 0 ∧ b = 0)) → EuclideanSpace.single i a = EuclideanSpace.single j b := by
    intro h
    cases h with
    | inl h =>
      -- Case: i = j ∧ a = b
      have h₁ : i = j := h.1
      have h₂ : a = b := h.2
      rw [h₁]
      congr 1
      <;> simp_all [EuclideanSpace.single_apply]
      <;> aesop
    | inr h =>
      -- Case: a = 0 ∧ b = 0
      have h₁ : a = 0 := h.1
      have h₂ : b = 0 := h.2
      have h₃ : EuclideanSpace.single i a = 0 := by
        ext k
        simp [EuclideanSpace.single_apply, h₁]
        <;> aesop
      have h₄ : EuclideanSpace.single j b = 0 := by
        ext k
        simp [EuclideanSpace.single_apply, h₂]
        <;> aesop
      rw [h₃, h₄]
  
  exact ⟨h_imp, h_conv⟩