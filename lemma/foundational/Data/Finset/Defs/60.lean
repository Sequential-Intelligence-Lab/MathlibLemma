import Mathlib

lemma Finset.coe_ssubset_univ_iff {α} [Fintype α] {s : Finset α} :
    (s : Set α) ⊂ (Set.univ : Set α) ↔ s ⊂ (Finset.univ : Finset α) := by
  constructor
  · -- Direction: (s : Set α) ⊂ Set.univ → s ⊂ Finset.univ
    intro h
    -- Unpack strict subset on sets into subset + inequality
    rcases Set.ssubset_iff_subset_ne.mp h with ⟨_, hne⟩
    -- hne : (s : Set α) ≠ Set.univ
    -- Prove s ≠ Finset.univ
    have hne' : s ≠ (Finset.univ : Finset α) := by
      intro hEq
      -- Then the coerced sets would be equal, contradicting hne
      have : (s : Set α) = (Set.univ : Set α) := by
        simpa [hEq, Finset.coe_univ]
      exact hne this
    -- Assemble the finset strict subset
    refine Finset.ssubset_iff_subset_ne.mpr ?_
    refine ⟨?subset, hne'⟩
    -- Any finset is a subset of univ
    intro x hx
    exact Finset.mem_univ x
  · -- Direction: s ⊂ Finset.univ → (s : Set α) ⊂ Set.univ
    intro h
    -- Unpack strict subset on finsets into subset + inequality
    rcases Finset.ssubset_iff_subset_ne.mp h with ⟨_, hne'⟩
    -- hne' : s ≠ Finset.univ
    -- Show that the corresponding sets are not equal
    have hne : (s : Set α) ≠ (Set.univ : Set α) := by
      intro e
      -- Rewrite equality of sets as equality of coerced finsets using injectivity
      have e' : (s : Set α) = ((Finset.univ : Finset α) : Set α) := by
        simpa [Finset.coe_univ] using e
      have : s = (Finset.univ : Finset α) :=
        Finset.coe_injective e'
      exact hne' this
    -- Assemble the set strict subset
    refine Set.ssubset_iff_subset_ne.mpr ?_
    refine ⟨Set.subset_univ _, hne⟩