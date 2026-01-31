import Mathlib

lemma Finset.subset_iff_ssubset_or_eq {α} {s t : Finset α} :
    s ⊆ t ↔ s ⊂ t ∨ s = t := by
  classical
  constructor
  · intro hsub
    by_cases h : s = t
    · exact Or.inr h
    · left
      -- Use the characterization of strict subset for Finsets
      exact (Finset.ssubset_iff_subset_ne).2 ⟨hsub, h⟩
  · intro h
    cases h with
    | inl hss =>
        -- From strict subset, get the underlying subset
        exact (Finset.ssubset_iff_subset_ne).1 hss |>.1
    | inr heq =>
        -- If s = t, then s ⊆ t trivially
        simpa [heq] using (Finset.Subset.refl t)