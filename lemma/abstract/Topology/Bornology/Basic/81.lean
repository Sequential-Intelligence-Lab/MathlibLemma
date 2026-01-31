import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_inter_union [Bornology α]
    {s t u : Set α} (hs : IsBounded s) (ht : IsBounded t) (hu : IsBounded u) :
    IsBounded ((s ∩ t) ∪ u) := by
  -- First, `s ∪ u` is bounded
  have hsu : IsBounded (s ∪ u) := hs.union hu
  -- Show `(s ∩ t) ∪ u ⊆ s ∪ u`
  have hsubset : (s ∩ t) ∪ u ⊆ s ∪ u := by
    intro x hx
    rcases hx with hx | hx
    · -- case `x ∈ s ∩ t`
      exact Or.inl hx.left
    · -- case `x ∈ u`
      exact Or.inr hx
  -- Use monotonicity of bounded sets
  exact hsu.subset hsubset