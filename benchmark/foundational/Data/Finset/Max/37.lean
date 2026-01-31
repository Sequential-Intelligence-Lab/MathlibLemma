import Mathlib

theorem Finset.min'_subset_of_forall_ge {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty)
    (hle : ∀ x ∈ s, ∀ y ∈ t, x ≤ y) :
    s.max' hs ≤ t.min' ht := by
  sorry
