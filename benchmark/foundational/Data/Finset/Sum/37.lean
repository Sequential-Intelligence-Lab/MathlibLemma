import Mathlib

lemma toRight_image_inr {α β} [DecidableEq α] [DecidableEq β] [DecidableEq (α ⊕ β)]
    (t : Finset β) :
    (t.image Sum.inr : Finset (α ⊕ β)).toRight = t := by
  sorry