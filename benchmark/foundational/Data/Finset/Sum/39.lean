import Mathlib

lemma toRight_image_inl {α β} [DecidableEq (α ⊕ β)] (s : Finset α) :
    (s.image Sum.inl : Finset (α ⊕ β)).toRight = ∅ := by
  sorry
