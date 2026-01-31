import Mathlib

lemma Finset.univ_filter_card {α : Type*} [Fintype α]
    (p : α → Prop) [DecidablePred p] :
    (Finset.univ.filter fun x : α => p x).card =
      Fintype.card {x // p x} := by
  sorry
