import Mathlib

lemma Fintype.card_pi_fin {n : ℕ} (α : Fin n → Type*)
    [∀ i, Fintype (α i)] :
    Fintype.card (∀ i, α i) = ∏ i, Fintype.card (α i) := by
  sorry
