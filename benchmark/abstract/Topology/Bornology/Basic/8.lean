import Mathlib

open Set Filter Bornology

variable {α β : Type*}

lemma Bornology.isBounded_image_inl
    [Bornology α] [Bornology β] [Bornology (Sum α β)]
    {s : Set α} (hs : IsBounded s) :
    IsBounded (Sum.inl '' s : Set (Sum α β)) := by
  sorry