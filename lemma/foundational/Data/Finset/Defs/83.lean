import Mathlib

lemma Finset.ssubset_iff_subset_not_subset {α} {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ ¬ t ⊆ s := by
  constructor
  · intro h
    -- Start from the standard characterization via `≠`
    rcases Finset.ssubset_iff_subset_ne.mp h with ⟨hsub, hne⟩
    refine ⟨hsub, ?_⟩
    intro ht
    -- `s ⊆ t` and `t ⊆ s` give equality, contradicting `hne`
    exact hne (subset_antisymm hsub ht)
  · intro h
    rcases h with ⟨hsub, hnot⟩
    -- We will build the `≠` part from `¬ t ⊆ s`
    refine Finset.ssubset_iff_subset_ne.mpr ?_
    refine ⟨hsub, ?_⟩
    intro hEq
    -- If `s = t`, then `t ⊆ s`, contradicting `hnot`
    apply hnot
    simpa [hEq] using (subset_rfl : s ⊆ s)