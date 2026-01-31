import Mathlib

lemma Fintype.card_pfun_prop (p : Prop) [Decidable p] (α : p → Type*) [∀ hp, Fintype (α hp)] :
    Fintype.card (∀ hp : p, α hp) =
      if h : p then Fintype.card (α h) else 1 := by
  sorry
