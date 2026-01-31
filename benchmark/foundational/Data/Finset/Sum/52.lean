import Mathlib

lemma toRight_eq_toRight_iff {α β} {u v : Finset (α ⊕ β)} :
    u.toRight = v.toRight ↔ ∀ b, .inr b ∈ u ↔ .inr b ∈ v := by
  sorry
