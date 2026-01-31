import Mathlib

lemma Fintype.eq_of_subsingleton_card {α : Type*} [Fintype α]
    (h : Fintype.card α = 1) :
    ∀ x y : α, x = y := by
  -- From `card = 1` we get `card ≤ 1`
  have h_le : Fintype.card α ≤ 1 := by
    simpa [h]
  -- Use the standard equivalence between `card ≤ 1` and `Subsingleton α`
  have hSub : Subsingleton α :=
    (Fintype.card_le_one_iff_subsingleton).mp h_le
  -- Now use `Subsingleton.elim` to prove any two elements are equal
  intro x y
  exact hSub.elim x y