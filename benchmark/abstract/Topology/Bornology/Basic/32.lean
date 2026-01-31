import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_preimage_injective_iff [Bornology α] [Bornology β]
    {f : α → β} (hf : Function.Injective f)
    (hmap : cobounded α ≤ (cobounded β).comap f)
    (hcomap : (cobounded β).comap f ≤ cobounded α)
    {s : Set β} :
    IsBounded (f ⁻¹' s) ↔ IsBounded s := by
  sorry
