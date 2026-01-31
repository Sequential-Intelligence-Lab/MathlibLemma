import Mathlib

lemma disjSum_cons_left {α β} (a : α) (s : Finset α) (t : Finset β) (h : a ∉ s) :
    (Finset.cons a s h).disjSum t =
      Finset.cons (.inl a) (s.disjSum t)
        (by
          have : Sum.inl a ∉ s.disjSum t := by
            sorry
          exact this) := by
  sorry