import Mathlib

theorem Finset.max'_map_embedding {α β} [LinearOrder α] [LinearOrder β]
    (e : α ↪ β) {s : Finset α} (hs : s.Nonempty) :
    (s.image e).max' (hs.image _) = e (s.max' hs) := by
  sorry
