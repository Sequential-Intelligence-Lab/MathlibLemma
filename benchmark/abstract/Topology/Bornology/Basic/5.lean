import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_of_image_subtype_val [Bornology α] {s : Set α}
    (hs : IsBounded (Subtype.val '' (univ : Set {x // x ∈ s}))) :
    IsBounded s := by
  sorry
