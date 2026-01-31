import Mathlib

lemma toLeft_image_inl {α β} [DecidableEq α] [DecidableEq β] (s : Finset α) :
    (s.image Sum.inl : Finset (α ⊕ β)).toLeft = s := by
  sorry