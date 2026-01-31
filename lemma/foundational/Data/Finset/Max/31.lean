import Mathlib

theorem Finset.min'_union_eq_right_of_subset {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty) (hsub : s ⊆ t)
    (hmin : t.min' ht ∉ s) :
    (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      exact ⟨x, Finset.mem_union.mpr (Or.inl hx)⟩) = t.min' ht := by
  -- Nonempty witness for s ∪ t
  have hu : (s ∪ t).Nonempty := by
    rcases hs with ⟨x, hx⟩
    exact ⟨x, Finset.mem_union.mpr (Or.inl hx)⟩

  -- Since s ⊆ t, we have s ∪ t = t
  have hst : s ∪ t = t := Finset.union_eq_right.mpr hsub

  -- Use congruence of min' under finset equality
  simpa [hst] using
    (Finset.min'_congr (s := s ∪ t) (t := t) hst hu ht)