import Mathlib

lemma disjoint_toLeft_toRight {α β} (u : Finset (α ⊕ β)) :
    Disjoint (u.toLeft.map .inl) (u.toRight.map .inr) := by
  sorry
