import Mathlib

open Fintype

lemma Fintype.card_psigma {α : Type*} (β : α → Type*) [Fintype α]
    [∀ a, Fintype (β a)] :
    Fintype.card (Sigma β) = ∑ a : α, Fintype.card (β a) := by
  sorry