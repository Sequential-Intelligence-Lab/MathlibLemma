import Mathlib

theorem Finset.min'_eq_min'_image_id {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    s.min' hs = (s.image id).min' (hs.image _) := by
  sorry
