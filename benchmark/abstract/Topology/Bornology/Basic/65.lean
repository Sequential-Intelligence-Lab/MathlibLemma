import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isCobounded_univ_iff [Bornology α] :
    IsCobounded (univ : Set α) ↔ True := by
  sorry
