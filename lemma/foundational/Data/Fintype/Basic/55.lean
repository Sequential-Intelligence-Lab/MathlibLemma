import Mathlib

lemma Fintype.card_multiset (s : Multiset α) [DecidableEq α] :
    Fintype.card {x // x ∈ s} = s.toFinset.card := by
  classical
  -- Relate membership in the multiset and its `toFinset`
  have hmem : ∀ x : α, x ∈ s ↔ x ∈ s.toFinset := by
    intro x
    -- `Multiset.mem_toFinset` has type: x ∈ s.toFinset ↔ x ∈ s
    simpa using (Multiset.mem_toFinset (s := s) (a := x)).symm

  -- Construct an explicit equivalence between the two subtypes
  let e : {x // x ∈ s} ≃ {x // x ∈ s.toFinset} :=
    { toFun := fun x => ⟨x.1, (hmem x.1).1 x.2⟩
      , invFun := fun x => ⟨x.1, (hmem x.1).2 x.2⟩
      , left_inv := by
          intro x
          -- Subtype extensionality on the first component
          cases x with
          | mk a ha =>
            rfl
      , right_inv := by
          intro x
          cases x with
          | mk a ha =>
            rfl }

  -- Transfer cardinalities along the equivalence
  have h₁ :
      Fintype.card {x // x ∈ s} =
      Fintype.card {x // x ∈ s.toFinset} :=
    Fintype.card_congr e

  -- Cardinality of the subtype over the finset is the finset's card
  have h₂ :
      Fintype.card {x // x ∈ s.toFinset} =
      s.toFinset.card :=
    Fintype.card_coe (s.toFinset)

  -- Combine the equalities
  exact h₁.trans h₂