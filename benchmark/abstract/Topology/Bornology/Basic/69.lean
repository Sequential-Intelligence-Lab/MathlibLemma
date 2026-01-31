import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_diff_finite [Bornology α] {s t : Set α}
    (hs : IsBounded s) (ht : t.Finite) :
    IsBounded (s \ t) := by
  sorry
