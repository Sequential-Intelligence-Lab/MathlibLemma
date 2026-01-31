import Mathlib

theorem Finset.max'_image_antitone {α β} [LinearOrder α] [LinearOrder β]
    {f : α → β} (hf : Antitone f) (s : Finset α) (hs : s.Nonempty) :
    (s.image f).max' (hs.image _) = f (s.min' hs) := by
  sorry