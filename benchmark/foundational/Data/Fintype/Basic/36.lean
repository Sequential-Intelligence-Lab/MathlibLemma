import Mathlib

lemma Fintype.card_subtype_eq_univ_filter {α : Type*} [Fintype α]
    (p : α → Prop) [DecidablePred p] :
    Fintype.card {x // p x} =
      (Finset.univ.filter fun x => p x).card := by
  sorry
