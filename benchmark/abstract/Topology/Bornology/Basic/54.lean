import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_range_finite [Bornology α]
    {f : β → α} (hfin : (Set.range f).Finite) :
    IsBounded (Set.range f) := by
  sorry
