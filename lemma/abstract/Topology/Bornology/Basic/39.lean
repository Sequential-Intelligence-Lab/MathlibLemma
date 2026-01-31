import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_compact_subset [TopologicalSpace α] [Bornology α]
    {s t : Set α} (hs : IsBounded s) (ht : IsClosed t) (hsub : t ⊆ s) :
    IsBounded t := by
  -- boundedness is monotone with respect to set inclusion
  exact hs.subset hsub