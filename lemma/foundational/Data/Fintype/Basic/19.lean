import Mathlib

lemma Fintype.card_psigma_prop_left {α : Prop} {β : α → Type*}
    [Decidable α] [∀ a, Fintype (β a)] :
    Fintype.card (PSigma β) =
      if h : α then Fintype.card (β h) else 0 := by
  classical
  by_cases hα : α
  · -- Case α is true
    -- We will show Fintype.card (PSigma β) = Fintype.card (β hα),
    -- which matches the RHS after rewriting the `if`.
    have : Fintype.card (PSigma β) = Fintype.card (β hα) := by
      -- α is a Prop, hence a subsingleton
      have hsub : Subsingleton α := inferInstance
      -- Build an equivalence PSigma β ≃ β hα
      refine Fintype.card_congr ?e
      refine
        { toFun := ?toFun
          invFun := ?invFun
          left_inv := ?left_inv
          right_inv := ?right_inv }
      · -- toFun : PSigma β → β hα
        intro p
        -- every proof of α is equal
        have e : p.1 = hα := hsub.elim _ _
        -- transport p.2 : β p.1 along e to β hα
        simpa [e] using p.2
      · -- invFun : β hα → PSigma β
        intro b
        exact ⟨hα, b⟩
      · -- left inverse: invFun (toFun p) = p
        intro p
        cases p with
        | mk a b =>
          -- a : α, b : β a
          have e : a = hα := hsub.elim _ _
          -- After rewriting a with hα, both sides are definitional equal
          cases e
          rfl
      · -- right inverse: toFun (invFun b) = b
        intro b
        -- invFun b = ⟨hα, b⟩; toFun maps this back to b
        simp
    -- Now rewrite the `if` using hα
    simpa [hα] using this
  · -- Case α is false
    -- PSigma β is empty if there is no proof of α
    have hEmpty : IsEmpty (PSigma β) :=
      ⟨fun p => hα p.1⟩
    have : Fintype.card (PSigma β) = 0 :=
      (Fintype.card_eq_zero_iff).2 hEmpty
    -- Rewrite the `if` using ¬α
    simpa [hα] using this