import Mathlib

lemma toLeft_eq_empty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toLeft = (∅ : Finset α) ↔ ∀ a, Sum.inl a ∉ u := by
  sorry
