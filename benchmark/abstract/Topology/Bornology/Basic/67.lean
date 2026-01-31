import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_insert_iff_forall [Bornology α] {x : α} {s : Set α} :
    IsBounded (insert x s) ↔ IsBounded s := by
  sorry
