import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_lt_sqrt_iff {x y : ℝ} :
    √x < √y ↔ (x < y) ∧ (x ≥ 0 ∨ y > 0) := by
  have h_imp : (x < y) ∧ (x ≥ 0 ∨ y > 0) → √x < √y := by
    intro h
    have h₁ : x < y := h.1
    have h₂ : x ≥ 0 ∨ y > 0 := h.2
    cases h₂ with
    | inl h₂ =>
      -- Case: x ≥ 0
      have h₃ : y > 0 := by
        by_contra h₃
        have h₄ : y ≤ 0 := by linarith
        have h₅ : x < y := h₁
        have h₆ : x ≥ 0 := h₂
        linarith
      have h₄ : 0 ≤ x := h₂
      have h₅ : 0 ≤ y := by linarith
      have h₆ : √x < √y := by
        apply Real.sqrt_lt_sqrt
        · linarith
        · linarith
      exact h₆
    | inr h₂ =>
      -- Case: y > 0
      by_cases h₃ : x < 0
      · -- Subcase: x < 0
        have h₄ : √x = 0 := by
          rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
        have h₅ : 0 < √y := Real.sqrt_pos.mpr h₂
        rw [h₄]
        linarith
      · -- Subcase: x ≥ 0
        have h₄ : 0 ≤ x := by linarith
        have h₅ : 0 ≤ y := by linarith
        have h₆ : √x < √y := by
          apply Real.sqrt_lt_sqrt
          · linarith
          · linarith
        exact h₆
  
  have h_conv : √x < √y → (x < y) ∧ (x ≥ 0 ∨ y > 0) := by
    intro h
    have h₁ : x < y := by
      by_cases hx : x < 0
      · -- Case: x < 0
        have h₂ : √x = 0 := by
          rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
        rw [h₂] at h
        have h₃ : (0 : ℝ) < √y := by linarith
        have h₄ : x < y := by
          by_contra h₄
          have h₅ : y ≤ x := by linarith
          have h₆ : y ≤ 0 := by linarith
          have h₇ : √y = 0 := by
            rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
          linarith
        exact h₄
      · -- Case: x ≥ 0
        have hx' : 0 ≤ x := by linarith
        by_contra h₂
        have h₃ : y ≤ x := by linarith
        have h₄ : √y ≤ √x := by
          apply Real.sqrt_le_sqrt
          linarith
        linarith
    have h₂ : x ≥ 0 ∨ y > 0 := by
      by_cases hx : x < 0
      · -- Case: x < 0
        have h₃ : √x = 0 := by
          rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
        rw [h₃] at h
        have h₄ : (0 : ℝ) < √y := by linarith
        have h₅ : 0 < y := by
          by_contra h₅
          have h₆ : y ≤ 0 := by linarith
          have h₇ : √y = 0 := by
            rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
          linarith
        exact Or.inr (by linarith)
      · -- Case: x ≥ 0
        exact Or.inl (by linarith)
    exact ⟨h₁, h₂⟩
  
  apply Iff.intro
  · -- Prove the forward direction: √x < √y → (x < y) ∧ (x ≥ 0 ∨ y > 0)
    intro h
    exact h_conv h
  · -- Prove the backward direction: (x < y) ∧ (x ≥ 0 ∨ y > 0) → √x < √y
    intro h
    exact h_imp h