import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_union_inter [Bornology α]
    {s t u : Set α} (hs : IsBounded s) (ht : IsBounded t) (hu : IsBounded u) :
    IsBounded (s ∪ (t ∩ u)) := by
  sorry
