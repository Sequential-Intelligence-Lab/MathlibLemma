import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_of_subset_univ [Bornology α]
    [BoundedSpace α] {s : Set α} (hsub : s ⊆ (univ : Set α)) :
    IsBounded s := by
  sorry
