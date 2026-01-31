import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_univ_subtype [Bornology α] (p : α → Prop) :
    @IsBounded {x // p x} _ (univ : Set {x // p x}) ↔ IsBounded {x | p x} := by
  sorry
