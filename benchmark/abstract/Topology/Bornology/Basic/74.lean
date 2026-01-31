import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_restrict [Bornology α]
    {s t : Set α} (hs : IsBounded s) (ht : t ⊆ s) :
    IsBounded t := by
  sorry
