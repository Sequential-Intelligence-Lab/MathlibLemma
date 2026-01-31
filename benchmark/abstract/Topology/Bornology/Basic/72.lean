import Mathlib

variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_comp_left
    [Bornology α] [Bornology β] [Bornology γ]
    {f : β → γ} {g : α → β}
    (hf : (cobounded γ).comap f ≤ cobounded β)
    (hg : (cobounded β).comap g ≤ cobounded α)
    {s : Set α} (hs : IsBounded s) :
    IsBounded ((fun x => f (g x)) '' s) := by
  sorry