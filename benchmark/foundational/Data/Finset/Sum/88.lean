import Mathlib

open Finset

lemma disjSum_univ_right {α β} [Fintype β] [DecidableEq α] [DecidableEq β]
    (s : Finset α) :
    s.disjSum (Finset.univ : Finset β) =
      (s.image Sum.inl) ∪ (Finset.univ.image Sum.inr) := by
  sorry