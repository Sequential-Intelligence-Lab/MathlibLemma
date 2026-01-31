import Mathlib

lemma Fintype.card_multiset (s : Multiset α) [DecidableEq α] :
    Fintype.card {x // x ∈ s} = s.toFinset.card := by
  sorry
