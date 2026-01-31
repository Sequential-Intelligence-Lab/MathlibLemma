import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_prod_of_fst_snd [Bornology α] [Bornology β]
    {s : Set (α × β)}
    (h₁ : IsBounded ((Prod.fst) '' s : Set α))
    (h₂ : IsBounded ((Prod.snd) '' s : Set β)) :
    IsBounded s := by
  sorry
