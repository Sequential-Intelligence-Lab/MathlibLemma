import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_image_preimage_inter [Bornology α] [Bornology β]
    {f : α → β} (hf : (cobounded β).comap f ≤ cobounded α)
    {s : Set β} (hs : IsBounded s) :
    IsBounded (f ⁻¹' s) := by
  sorry
