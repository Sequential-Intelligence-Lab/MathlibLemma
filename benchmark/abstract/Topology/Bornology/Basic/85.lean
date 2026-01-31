import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_image_equiv
    [Bornology α] [Bornology β]
    (e : α ≃ β)
    {s : Set α} :
    Bornology.IsBounded (e '' s) ↔ Bornology.IsBounded s := by
  sorry