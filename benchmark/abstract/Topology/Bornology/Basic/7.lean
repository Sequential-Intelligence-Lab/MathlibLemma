import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_preimage_subtype_val [Bornology α] {s t : Set α}
    (ht : IsBounded t) :
    IsBounded ((Subtype.val : {x : α // x ∈ s} → α) ⁻¹' t) := by
  sorry