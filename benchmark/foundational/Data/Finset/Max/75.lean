import Mathlib

theorem Finset.min'_disjoint_union {α} [LinearOrder α] [DecidableEq α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty) (hdis : Disjoint s t) :
    (s ∪ t).min'
      (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) =
      min (s.min' hs) (t.min' ht) := by
  sorry