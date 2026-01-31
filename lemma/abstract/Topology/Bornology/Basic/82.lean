import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_union_inter [Bornology α]
    {s t u : Set α} (hs : IsBounded s) (ht : IsBounded t) (hu : IsBounded u) :
    IsBounded (s ∪ (t ∩ u)) := by
  -- First, show that `t ∩ u` is bounded since it is a subset of `t`
  have htu : IsBounded (t ∩ u) :=
    ht.subset (by
      intro x hx
      exact hx.1)
  -- Now use the fact that union of two bounded sets is bounded
  exact (isBounded_union).2 ⟨hs, htu⟩