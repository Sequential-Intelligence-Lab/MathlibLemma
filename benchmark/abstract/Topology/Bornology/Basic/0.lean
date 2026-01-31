import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology
lemma Bornology.isBounded_subset_Union {s : ι → Set α} [Bornology α]
    (hs : IsBounded (⋃ i, s i)) {t : Set ι} (ht : (⋃ i ∈ t, s i) = ⋃ i, s i) :
    (∀ i ∈ t, IsBounded (s i)) := by
  sorry
