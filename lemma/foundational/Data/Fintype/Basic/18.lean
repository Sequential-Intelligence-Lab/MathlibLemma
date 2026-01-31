import Mathlib

lemma Fintype.card_subtype_eq_filter {α : Type*} [Fintype α]
    (p : α → Prop) [DecidablePred p] :
    Fintype.card {x // p x} =
      (Finset.univ.filter fun a : α => p a).card := by
  classical

  -- Auxiliary lemma: cardinality of the subtype corresponding to a finset.
  have card_coe (s : Finset α) :
      Fintype.card (↥s) = s.card := by
    -- `↥s` is `{x : α // x ∈ s}`
    -- Use the equivalence `s.equivFin : ↥s ≃ Fin s.card`
    simpa using
      (Fintype.card_congr (s.equivFin))

  -- Auxiliary lemma: elements in `s` satisfying `p` correspond to `s.filter p`
  have card_subtype_filter (s : Finset α) (p : α → Prop) [DecidablePred p] :
      Fintype.card {x : α // x ∈ s ∧ p x} = (s.filter p).card := by
    classical
    -- Define the equivalence between the two subtypes
    let e :
        {x : α // x ∈ s ∧ p x} ≃ {x : α // x ∈ s.filter p} :=
    { toFun := fun x =>
        ⟨x.1, by
          -- x.2 : x.1 ∈ s ∧ p x.1
          exact (Finset.mem_filter.2 ⟨x.2.1, x.2.2⟩)⟩
      , invFun := fun x =>
        ⟨x.1, by
          -- x.2 : x.1 ∈ s.filter p
          have hx := (Finset.mem_filter.1 x.2)
          exact And.intro hx.1 hx.2⟩
      , left_inv := by
          intro x
          apply Subtype.ext
          rfl
      , right_inv := by
          intro x
          apply Subtype.ext
          rfl }
    -- Use card_congr and then the lemma for `↥(s.filter p)`
    have h := Fintype.card_congr e
    -- RHS is `Fintype.card {x : α // x ∈ s.filter p}` = `Fintype.card (↥(s.filter p))`
    -- which equals `(s.filter p).card` by `card_coe`
    simpa [Subtype] using
      (h.trans (card_coe (s.filter p)))

  -- Equivalence between `{x // p x}` and `{x : α // x ∈ univ ∧ p x}`
  let eUniv :
      {x : α // p x} ≃
        {x : α // x ∈ (Finset.univ : Finset α) ∧ p x} :=
  { toFun := fun x =>
      ⟨x.1, by
        refine And.intro ?h_univ x.2
        simp⟩
    , invFun := fun x =>
      ⟨x.1, x.2.2⟩
    , left_inv := by
        intro x
        apply Subtype.ext
        rfl
    , right_inv := by
        intro x
        apply Subtype.ext
        rfl }

  -- Use the equivalence and the finset-filter lemma with `s = univ`
  calc
    Fintype.card {x // p x}
        = Fintype.card {x : α // x ∈ (Finset.univ : Finset α) ∧ p x} :=
          Fintype.card_congr eUniv
    _ = (Finset.univ.filter fun a : α => p a).card := by
          simpa using
            card_subtype_filter (Finset.univ : Finset α) p