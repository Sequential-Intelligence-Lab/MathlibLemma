import Mathlib

theorem Finset.min'_subset_image {α} [LinearOrder α] [DecidableEq α]
    (s : Finset α) (hs : s.Nonempty) :
    s.min' hs ∈ s.image id := by
  sorry