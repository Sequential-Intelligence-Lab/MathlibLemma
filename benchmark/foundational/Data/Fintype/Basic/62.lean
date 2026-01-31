import Mathlib

lemma Finite.exists_injective_to_fin {α : Type*} [Finite α] :
    ∃ (n : ℕ) (f : α ↪ Fin n), True := by
  classical
  sorry