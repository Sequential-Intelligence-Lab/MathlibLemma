import Mathlib

theorem Finset.min'_subset_antisymm {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (ht : t.Nonempty) (hst : s ⊆ t) (hts : t ⊆ s) :
    s.min' hs = t.min' ht := by
  sorry
