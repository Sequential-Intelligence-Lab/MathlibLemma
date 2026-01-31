import Mathlib

lemma disjSum_eq_left {α β} (s : Finset α) (t : Finset β) :
    s.disjSum t = s.map .inl ↔ t = ∅ := by
  sorry
