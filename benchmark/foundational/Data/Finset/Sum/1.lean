import Mathlib

lemma disjSum_singleton_right {α β} [DecidableEq (α ⊕ β)]
    (s : Finset α) (b : β) :
    s.disjSum ({b} : Finset β) =
      insert (Sum.inr b) (s.image Sum.inl) := by
  sorry