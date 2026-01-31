import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_interior [TopologicalSpace α] [Bornology α]
    {s : Set α} (hs : IsBounded s) :
    IsBounded (interior s) := by
  sorry
