import Mathlib

lemma disjSum_image_inr {α β} [DecidableEq (α ⊕ β)] (s : Finset α) (t : Finset β) :
    s.disjSum t = (s.image Sum.inl) ∪ (t.image Sum.inr) := by
  sorry
