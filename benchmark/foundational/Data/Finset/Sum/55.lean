import Mathlib

lemma sumEquiv_apply_toLeft {α β} (u : Finset (α ⊕ β)) :
    (Finset.sumEquiv (α := α) (β := β) u).1 = u.toLeft := by
  sorry
