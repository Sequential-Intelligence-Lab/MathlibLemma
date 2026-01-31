import Mathlib

lemma disjSum_erase_right {α β} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t : Finset β) (b : β) :
    s.disjSum (t.erase b) = (s.disjSum t).erase (.inr b) := by
  sorry