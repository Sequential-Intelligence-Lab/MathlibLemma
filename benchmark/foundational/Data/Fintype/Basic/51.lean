import Mathlib

lemma Fintype.eq_of_subsingleton_card {α : Type*} [Fintype α]
    (h : Fintype.card α = 1) :
    ∀ x y : α, x = y := by
  sorry
