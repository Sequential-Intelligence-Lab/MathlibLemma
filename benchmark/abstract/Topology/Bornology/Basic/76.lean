import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_subset_iff [Bornology α]
    {s t : Set α} (hst : s ⊆ t) :
    IsBounded t → IsBounded s := by
  sorry
