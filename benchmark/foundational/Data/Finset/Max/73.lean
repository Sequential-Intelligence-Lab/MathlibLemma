import Mathlib

theorem Finset.min'_subset_iff {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (ht : t.Nonempty) :
    t.min' ht ≤ s.min' hs ↔ ∀ a ∈ s, ∃ b ∈ t, b ≤ a := by
  sorry
