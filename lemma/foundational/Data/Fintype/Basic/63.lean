import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

noncomputable def Fintype.equivFin_of_card {α : Type*} [Fintype α] {n : ℕ}
    (h : Fintype.card α = n) : α ≃ Fin n := by
  have h₁ : α ≃ Fin (Fintype.card α) := by
    apply Fintype.equivFin
    <;> simp_all
    <;> aesop
  
  have h₂ : Fin (Fintype.card α) ≃ Fin n := by
    have h₂₁ : n = Fintype.card α := by
      rw [h]
      <;> rfl
    subst_vars
    <;> simp_all [Equiv.refl]
    <;> aesop
  
  have h₃ : α ≃ Fin n := by
    exact h₁.trans h₂
  
  exact h₃