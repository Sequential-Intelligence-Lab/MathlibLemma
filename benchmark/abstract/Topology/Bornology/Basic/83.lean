import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_symmDiff [Bornology α]
    {s t : Set α} (hs : IsBounded s) (ht : IsBounded t) :
    IsBounded ((s \ t) ∪ (t \ s)) := by
  sorry