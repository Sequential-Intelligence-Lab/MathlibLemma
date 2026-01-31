import Mathlib

lemma Fin.card (n : ℕ) : Fintype.card (Fin n) = n := by
  simpa using Fintype.card_fin n