import Mathlib

theorem Finset.min'_map_embedding {α β} [LinearOrder α] [LinearOrder β]
    (e : α ↪ β) {s : Finset α} (hs : s.Nonempty) :
    (s.image e).min' (hs.image _) = e (s.min' hs) := by
  sorry
