import Mathlib

theorem Finset.card_filter_lt_max'_succ {α} [LinearOrder α] [DecidableEq α]
    {s : Finset α} (hs : s.Nonempty) :
    (s.filter fun x ↦ x < s.max' hs).card + 1 = s.card := by
  sorry
