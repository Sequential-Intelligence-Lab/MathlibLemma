import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_eq_iff [Zero α] [DecidableEq n] (A B : Matrix n n α) :
    Matrix.diag A = Matrix.diag B ↔ ∀ i, A i i = B i i := by
  have h_imp : Matrix.diag A = Matrix.diag B → ∀ i, A i i = B i i := by
    intro h i
    have h₁ : (Matrix.diag A) i = (Matrix.diag B) i := by rw [h]
    have h₂ : (Matrix.diag A) i = A i i := rfl
    have h₃ : (Matrix.diag B) i = B i i := rfl
    rw [h₂] at h₁
    rw [h₃] at h₁
    exact h₁
  
  have h_converse : (∀ i, A i i = B i i) → Matrix.diag A = Matrix.diag B := by
    intro h
    funext i
    have h₁ : (Matrix.diag A) i = A i i := rfl
    have h₂ : (Matrix.diag B) i = B i i := rfl
    have h₃ : A i i = B i i := h i
    rw [h₁, h₂]
    <;> rw [h₃]
  
  have h_main : Matrix.diag A = Matrix.diag B ↔ ∀ i, A i i = B i i := by
    constructor
    · -- Prove the forward direction: if Matrix.diag A = Matrix.diag B, then ∀ i, A i i = B i i
      intro h
      exact h_imp h
    · -- Prove the backward direction: if ∀ i, A i i = B i i, then Matrix.diag A = Matrix.diag B
      intro h
      exact h_converse h
  
  exact h_main