import Mathlib

lemma Fintype.card_quotient_eq [Fintype α] (s : Setoid α)
    [DecidableRel (fun x y : α => x ≈ y)] :
    Fintype.card (Quotient s) ≤ Fintype.card α := by
  classical
  -- choose a representative for each quotient
  let rep : Quotient s → α := fun q => Classical.choose (Quot.exists_rep q)
  have hrep : ∀ q : Quotient s, (⟦rep q⟧ : Quotient s) = q := by
    intro q
    exact (Classical.choose_spec (Quot.exists_rep q))
  -- show that this choice of representatives is injective
  have h_inj : Function.Injective rep := by
    intro q₁ q₂ h
    -- move from equality of representatives to equality of quotients
    calc
      q₁ = ⟦rep q₁⟧ := (hrep q₁).symm
      _ = ⟦rep q₂⟧ := by simpa [h]
      _ = q₂ := hrep q₂
  -- conclude via cardinality inequality for an injective map
  exact Fintype.card_le_of_injective rep h_inj