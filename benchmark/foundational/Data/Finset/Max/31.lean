import Mathlib

theorem Finset.min'_union_eq_right_of_subset {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty) (hsub : s ⊆ t)
    (hmin : t.min' ht ∉ s) :
    (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      exact ⟨x, Finset.mem_union.mpr (Or.inl hx)⟩) = t.min' ht := by
  sorry