import Mathlib

lemma disjSum_attach_sum {α β}
    [AddCommMonoid α] [AddCommMonoid β]
    (s : Finset α) (t : Finset β) :
    (s.disjSum t).card =
      s.card + t.card := by
  sorry
