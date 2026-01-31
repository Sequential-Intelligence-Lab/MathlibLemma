import Mathlib

lemma Finset.subset_iff_coe_subset {α : Type _} [DecidableEq α]
    {s t : Finset α} :
    s ⊆ t ↔ (s : Set α) ⊆ (t : Set α) := by
  simpa using
    (Finset.coe_subset : (s : Set α) ⊆ (t : Set α) ↔ s ⊆ t).symm