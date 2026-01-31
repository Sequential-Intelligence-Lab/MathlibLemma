import Mathlib

theorem Finset.max'_union_eq_left_of_subset {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty) (hsub : t ⊆ s)
    (hmax : s.max' hs ∉ t) :
    (s ∪ t).max' (hs.mono (by
      intro x hx
      have : x ∈ s ∨ x ∈ t := Or.inl hx
      simpa [Finset.mem_union] using this)) = s.max' hs := by
  sorry