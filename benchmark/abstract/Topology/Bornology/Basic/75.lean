import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isCobounded_superset_iff [Bornology α]
    {s t : Set α} (hst : s ⊆ t) :
    IsCobounded t → IsCobounded s := by
  sorry
