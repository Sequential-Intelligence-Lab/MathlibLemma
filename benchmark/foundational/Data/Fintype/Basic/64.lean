import Mathlib

lemma Finite.exists_eq_card_fintype (α : Type*) [Fintype α] :
    ∃ n, Fintype.card α = n := by
  classical
  sorry