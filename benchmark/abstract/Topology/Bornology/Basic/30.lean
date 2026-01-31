import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_iInter_subset_univ [Bornology α]
    {s : ι → Set α} (h : ∀ i, IsBounded (s i)) :
    IsBounded (⋂ i, s i) := by
  sorry
