import Mathlib

lemma toLeft_image_sumComm_eq_toRight {α β}
    [DecidableEq (α ⊕ β)] [DecidableEq (β ⊕ α)]
    (u : Finset (α ⊕ β)) :
    (u.image (Equiv.sumComm _ _)).toLeft = u.toRight := by
  sorry