import Mathlib

lemma toLeft_image_inr {α β} [DecidableEq (α ⊕ β)] (t : Finset β) :
    (t.image Sum.inr : Finset (α ⊕ β)).toLeft = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_not_mem.mpr
  intro a
  -- A left element cannot come from an image of `Sum.inr`
  simp