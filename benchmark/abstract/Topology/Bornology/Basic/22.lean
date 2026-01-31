import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_diff_of_isCobounded [Bornology α]
    {s t : Set α} (hs : IsBounded s) (ht : IsCobounded t) :
    IsBounded (s \ t) := by
  sorry
