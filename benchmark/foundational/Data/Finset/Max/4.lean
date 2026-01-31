import Mathlib

theorem Finset.max'_subset_antisymm {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (ht : t.Nonempty) (hst : s ⊆ t) (hts : t ⊆ s) :
    s.max' hs = t.max' ht := by
  sorry
