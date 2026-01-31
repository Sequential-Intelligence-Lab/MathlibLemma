import Mathlib

theorem Finset.min'_mem_of_subset {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (hst : s ⊆ t) :
    s.min' hs ∈ t := by
  sorry
