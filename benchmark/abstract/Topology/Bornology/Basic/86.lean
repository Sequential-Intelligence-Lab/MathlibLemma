import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isCobounded_preimage_equiv
    [Bornology α] [Bornology β]
    (e : α ≃ β)
    (h : cobounded (α := α) = (cobounded (α := β)).comap e)
    {s : Set β} :
    IsCobounded (e ⁻¹' s) ↔ IsCobounded s := by
  sorry