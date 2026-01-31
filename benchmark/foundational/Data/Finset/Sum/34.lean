import Mathlib

lemma toLeft_nonempty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toLeft.Nonempty ↔ ∃ a, Sum.inl a ∈ u := by
  sorry
