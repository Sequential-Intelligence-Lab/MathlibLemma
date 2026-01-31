import Mathlib

lemma disjSum_erase_left {α β} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t : Finset β) (a : α) :
    (s.erase a).disjSum t = (s.disjSum t).erase (.inl a) := by
  sorry