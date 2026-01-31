import Mathlib

noncomputable def Fintype.equivFin_of_card {α : Type*} [Fintype α] {n : ℕ}
    (h : Fintype.card α = n) : α ≃ Fin n := by
  classical
  sorry