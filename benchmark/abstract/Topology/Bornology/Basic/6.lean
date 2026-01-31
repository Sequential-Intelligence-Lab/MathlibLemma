import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_subtype_iff [Bornology α] {s : Set α} :
    @Bornology.IsBounded {x // x ∈ s} _ (univ : Set {x // x ∈ s}) ↔ IsBounded s := by
  sorry
