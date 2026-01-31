import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_prod_mk [Bornology α] [Bornology β] {s : Set α} {t : Set β}
    (hs : IsBounded s) (ht : IsBounded t) :
    @Bornology.IsBounded (α × β) _ (s ×ˢ t) := by
  sorry
