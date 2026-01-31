import Mathlib

lemma toLeft_disjoint_toRight {α β} (u : Finset (α ⊕ β)) :
    Disjoint (u.toLeft.map .inl) (u.toRight.map .inr) := by
  sorry
