import Mathlib

lemma Filter.mem_principal_iff_subset {α} {s t : Set α} :
    s ∈ (Filter.principal t : Filter α) ↔ t ⊆ s := by
  sorry