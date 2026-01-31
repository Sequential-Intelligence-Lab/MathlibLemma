import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_Union_heterogeneous [Bornology α]
    {s : ι → Set α} (hfinite : (⋃ i, s i).Finite) :
    IsBounded (⋃ i, s i) := by
  sorry
