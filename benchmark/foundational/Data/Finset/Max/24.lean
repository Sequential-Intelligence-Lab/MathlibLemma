import Mathlib

theorem Finset.max'_eq_max'_image_id {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    s.max' hs = (s.image id).max' (hs.image _) := by
  sorry
