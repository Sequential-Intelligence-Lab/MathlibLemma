import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_iUnion_of_finite_range [Bornology α]
    {s : ι → Set α} (hfin : (Set.range s).Finite)
    (h : ∀ i, IsBounded (s i)) :
    IsBounded (⋃ i, s i) := by
  sorry
