import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_image_coe_subtype [Bornology α]
    {p : α → Prop} {s : Set {x // p x}} (hs : IsBounded s) :
    IsBounded ((Subtype.val) '' s : Set α) := by
  sorry
