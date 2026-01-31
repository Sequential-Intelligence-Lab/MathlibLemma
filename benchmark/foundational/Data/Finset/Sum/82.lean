import Mathlib

lemma toRight_image_sumComm_eq_toLeft {α β}
    [DecidableEq (α ⊕ β)] [DecidableEq (β ⊕ α)]
    (u : Finset (α ⊕ β)) :
    (u.image (Equiv.sumComm _ _)).toRight = u.toLeft := by
  sorry