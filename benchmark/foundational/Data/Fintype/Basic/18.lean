import Mathlib

lemma Fintype.card_subtype_eq_filter {α : Type*} [Fintype α] (p : α → Prop) [DecidablePred p] :
    Fintype.card {x // p x} =
      (Finset.univ.filter fun a : α => p a).card := by
  sorry
