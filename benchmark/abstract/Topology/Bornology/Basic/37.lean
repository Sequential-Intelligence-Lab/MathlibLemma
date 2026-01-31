import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_preimage_embedding [Bornology α] [Bornology β]
    {f : α ↪ β} (hf : cobounded α = (cobounded β).comap f) {s : Set β} :
    IsBounded (f ⁻¹' s) ↔ IsBounded s := by
  sorry
