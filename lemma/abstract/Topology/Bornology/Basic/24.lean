import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_inter_isCobounded [Bornology α]
    {s t : Set α} (hs : IsBounded s) (ht : IsCobounded t) :
    IsBounded (s ∩ t) := by
  -- We only need that `s ∩ t ⊆ s`, then use monotonicity of `IsBounded`.
  have hsubset : s ∩ t ⊆ s := by
    intro x hx
    exact hx.1
  exact hs.subset hsubset