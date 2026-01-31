import Mathlib

lemma disjSum_nonempty_iff {α β} {s : Finset α} {t : Finset β} :
    (s.disjSum t).Nonempty ↔ s.Nonempty ∨ t.Nonempty := by
  sorry
