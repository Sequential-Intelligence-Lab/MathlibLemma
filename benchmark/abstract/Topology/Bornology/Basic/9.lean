import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_image_inr
    [Bornology α] [Bornology β] [Bornology (Sum α β)]
    {s : Set β} (hs : IsBounded s) :
    IsBounded (Sum.inr '' s : Set (Sum α β)) := by
  sorry