import Mathlib

theorem Finset.min'_unique {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) {a : α}
    (ha : a ∈ s) (hmin : ∀ b ∈ s, a ≤ b) :
    s.min' hs = a := by
  sorry
