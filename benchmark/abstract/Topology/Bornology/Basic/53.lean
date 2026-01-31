import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_finset [Bornology α] (s : Finset α) :
    IsBounded (↑s : Set α) := by
  sorry
