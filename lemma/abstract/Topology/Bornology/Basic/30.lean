import Mathlib


variable {α β γ ι κ : Type*}

open Set Filter Bornology

lemma Bornology.isBounded_iInter_subset_univ
    [Bornology α] [BoundedSpace α]
    {s : ι → Set α} (h : ∀ i, IsBounded (s i)) :
    IsBounded (⋂ i, s i) := by
  classical
  by_cases hι : Nonempty ι
  · -- Nonempty index type: pick an index and use monotonicity
    obtain ⟨i0⟩ := hι
    have hsubset : (⋂ i, s i) ⊆ s i0 := by
      intro x hx
      exact mem_iInter.mp hx i0
    exact (h i0).subset hsubset
  · -- Empty index type: the intersection is `univ`, which is bounded in a `BoundedSpace`
    haveI : IsEmpty ι := ⟨fun x => (hι ⟨x⟩).elim⟩
    -- With an empty index, `⋂ i, s i = univ`
    have hi : (⋂ i, s i) = (univ : Set α) := by
      simpa [iInter_of_empty]
    -- In a `BoundedSpace`, `univ` is bounded
    have h_univ : IsBounded (univ : Set α) :=
      (isBounded_univ (α := α)).2 inferInstance
    simpa [hi] using h_univ