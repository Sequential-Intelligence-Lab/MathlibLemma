import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_insert_iff_forall [Bornology α] {x : α} {s : Set α} :
    IsBounded (insert x s) ↔ IsBounded s := by
  constructor
  · -- → direction: boundedness is preserved under taking subsets
    intro h
    -- s ⊆ insert x s
    have hs_subset : s ⊆ insert x s := by
      intro y hy
      exact Or.inr hy
    exact h.subset hs_subset
  · -- ← direction: add a bounded singleton and use closure under unions
    intro hs
    -- singleton {x} is bounded
    have hx : IsBounded ({x} : Set α) := isBounded_singleton (x := x)
    -- union of two bounded sets is bounded
    have h_union : IsBounded ({x} ∪ s : Set α) := hx.union hs
    -- insert x s is a subset of {x} ∪ s
    have hsubset : insert x s ⊆ ({x} ∪ s : Set α) := by
      intro y hy
      rcases hy with hxy | hys
      · -- y = x
        left
        -- Turn equality into membership in the singleton
        simpa [Set.mem_singleton_iff, hxy]
      · -- y ∈ s
        right
        exact hys
    -- boundedness is preserved under taking subsets
    exact h_union.subset hsubset