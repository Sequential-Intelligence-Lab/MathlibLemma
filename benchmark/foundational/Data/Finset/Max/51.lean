import Mathlib

theorem Finset.card_filter_gt_min'_succ {α} [LinearOrder α] [DecidableEq α]
    {s : Finset α} (hs : s.Nonempty) :
    (s.filter fun x ↦ s.min' hs < x).card + 1 = s.card := by
  sorry
