import Mathlib

theorem Finset.max'_subset_image {α} [LinearOrder α] [DecidableEq α]
    (s : Finset α) (hs : s.Nonempty) :
    s.max' hs ∈ s.image id := by
  sorry