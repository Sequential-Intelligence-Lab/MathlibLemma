import Mathlib

lemma Fintype.card_fun_fin {n : ℕ} (β : Type*) [Fintype β] :
    Fintype.card (Fin n → β) = (Fintype.card β)^n := by
  sorry
