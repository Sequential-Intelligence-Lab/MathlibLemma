import Mathlib

lemma toLeft_image_inr {α β} [DecidableEq (α ⊕ β)] (t : Finset β) :
    (t.image Sum.inr : Finset (α ⊕ β)).toLeft = ∅ := by
  sorry
