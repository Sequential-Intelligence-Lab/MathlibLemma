import Mathlib

theorem Finset.max'_subset_iff {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (ht : t.Nonempty) :
    s.max' hs ≤ t.max' ht ↔ ∀ a ∈ s, ∃ b ∈ t, a ≤ b := by
  sorry
