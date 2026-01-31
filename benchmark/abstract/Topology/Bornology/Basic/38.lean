import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isCobounded_image_embedding [Bornology α] [Bornology β]
    {f : α ↪ β} (hf : cobounded β = (cobounded α).map f) {s : Set α} :
    IsCobounded (f '' s) ↔ IsCobounded s := by
  sorry
