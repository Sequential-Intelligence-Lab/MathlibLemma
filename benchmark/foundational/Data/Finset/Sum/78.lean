import Mathlib

lemma disjSum_sum_image_inl_inr {α β} [DecidableEq (α ⊕ β)]
    (s : Finset α) (t : Finset β) :
    s.disjSum t = (s.image Sum.inl ∪ t.image Sum.inr) := by
  sorry
