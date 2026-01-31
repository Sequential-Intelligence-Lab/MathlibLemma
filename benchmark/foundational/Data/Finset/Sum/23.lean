import Mathlib

lemma disjSum_eq_right {α β} (s : Finset α) (t : Finset β) :
    s.disjSum t = t.map .inr ↔ s = ∅ := by
  sorry
