import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isCobounded_preimage_coe_subtype [Bornology α]
    {p : α → Prop} {s : Set α} (hs : IsCobounded s) :
    IsCobounded ((Subtype.val : {x // p x} → α) ⁻¹' s) := by
  sorry
