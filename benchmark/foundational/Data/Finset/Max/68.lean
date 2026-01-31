import Mathlib

theorem Finset.max'_mem_of_subset {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (hst : s ⊆ t) :
    s.max' hs ∈ t := by
  sorry
