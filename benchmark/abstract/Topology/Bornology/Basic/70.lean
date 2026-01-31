import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isCobounded_union_finite [Bornology α] {s t : Set α}
    (hs : IsCobounded s) (ht : t.Finite) :
    IsCobounded (s ∪ t) := by
  sorry
