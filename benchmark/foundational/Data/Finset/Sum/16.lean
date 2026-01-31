import Mathlib

lemma disjSum_image_inl {α β} [DecidableEq (α ⊕ β)] (s : Finset α) (t : Finset β) :
    (s.image Sum.inl) ∪ (t.image Sum.inr) = s.disjSum t := by
  sorry
