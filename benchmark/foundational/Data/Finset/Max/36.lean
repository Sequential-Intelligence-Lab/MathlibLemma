import Mathlib

theorem Finset.max'_subset_of_forall_le {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty)
    (hle : ∀ x ∈ s, ∀ y ∈ t, y ≤ x) :
    t.max' ht ≤ s.min' hs := by
  sorry
