import Mathlib

noncomputable def Finite.fintype_sigma {α : Type*} [Finite α] (β : α → Type*)
    [∀ a, Finite (β a)] : Fintype (Sigma β) := by
  classical
  sorry