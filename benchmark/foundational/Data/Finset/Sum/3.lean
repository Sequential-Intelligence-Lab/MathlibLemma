import Mathlib

lemma disjSum_cons_right {α β} (b : β) (s : Finset α) (t : Finset β) (h : b ∉ t) :
    s.disjSum (Finset.cons b t h) =
      Finset.cons (.inr b) (s.disjSum t)
        (by
          have : Sum.inr b ∉ s.disjSum t := by
            sorry
          exact this) := by
  sorry