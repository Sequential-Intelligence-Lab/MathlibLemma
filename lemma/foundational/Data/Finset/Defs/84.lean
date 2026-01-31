import Mathlib

lemma Finset.subset_iff_ssubset_or_eq' {α} {s t : Finset α} :
    s ⊆ t ↔ s ⊂ t ∨ s = t := by
  constructor
  · intro hst
    by_cases hts : t ⊆ s
    · -- then s = t by antisymmetry
      right
      exact Finset.Subset.antisymm hst hts
    · -- then s is a strict subset of t
      left
      exact And.intro hst hts
  · intro h
    cases h with
    | inl hss =>
        -- s ⊂ t gives s ⊆ t
        exact hss.1
    | inr hEq =>
        -- s = t gives s ⊆ t
        simpa [hEq]