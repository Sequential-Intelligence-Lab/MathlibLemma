import Mathlib

lemma toRight_nonempty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toRight.Nonempty ↔ ∃ b, Sum.inr b ∈ u := by
  sorry
