import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_diff_singleton [Bornology α] {x : α} {s : Set α}
    (hs : IsBounded s) :
    IsBounded (s \ {x}) := by
  sorry
