import Mathlib

theorem Finset.min'_eq_min'_erase_insert {α} [LinearOrder α] [DecidableEq α]
    {s : Finset α} (hs : s.Nonempty) (a : α) (ha : a ∈ s) :
    s.min' hs = (insert a (s.erase a)).min' (by
      have : (s.erase a).Nonempty := by
        sorry
      sorry
    ) := by
  sorry