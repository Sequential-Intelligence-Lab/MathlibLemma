import Mathlib

lemma Filter.principal_injective {α} :
    Function.Injective (Filter.principal : Set α → Filter α) := by
  intro s t h
  -- First, show t ⊆ s
  have hts : t ⊆ s := by
    -- s is in its own principal filter
    have hs : s ∈ (Filter.principal s : Filter α) := by
      simp [Filter.mem_principal]
    -- transport along the equality of filters
    have hs' : s ∈ (Filter.principal t : Filter α) := by
      simpa [h] using hs
    -- interpret membership in principal as a subset relation
    simpa [Filter.mem_principal] using hs'
  -- Next, show s ⊆ t
  have hst : s ⊆ t := by
    -- t is in its own principal filter
    have ht : t ∈ (Filter.principal t : Filter α) := by
      simp [Filter.mem_principal]
    -- transport along the equality of filters (in the other direction)
    have ht' : t ∈ (Filter.principal s : Filter α) := by
      simpa [h] using ht
    -- interpret membership in principal as a subset relation
    simpa [Filter.mem_principal] using ht'
  -- Conclude equality of sets by antisymmetry
  exact Set.Subset.antisymm hst hts