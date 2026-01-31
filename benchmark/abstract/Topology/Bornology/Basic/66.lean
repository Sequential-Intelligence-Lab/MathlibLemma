import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_empty_iff [Bornology α] :
    IsBounded (∅ : Set α) ↔ True := by
  sorry
