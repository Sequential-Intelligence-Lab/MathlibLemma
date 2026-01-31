import Mathlib

lemma toRight_eq_empty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toRight = (∅ : Finset β) ↔ ∀ b, Sum.inr b ∉ u := by
  sorry
