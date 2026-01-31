import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isCobounded_union_finite [Bornology α] {s t : Set α}
    (hs : IsCobounded s) (ht : t.Finite) :
    IsCobounded (s ∪ t) := by
  -- Interpret the goal as membership in the cobounded filter.
  change (s ∪ t) ∈ (Bornology.cobounded α)
  -- Interpret `hs` as membership in the cobounded filter.
  have hs' : s ∈ (Bornology.cobounded α) := hs
  -- Use upward-closure of the filter: `s ⊆ s ∪ t`.
  refine Filter.mem_of_superset hs' ?_
  intro x hx
  exact Or.inl hx