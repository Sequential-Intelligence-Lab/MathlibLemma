import Mathlib

open Matrix

@[simp]
lemma diagonal_apply_ne_iff
  {ι α : Type _} [Zero α] [DecidableEq ι] (d : ι → α) {i j : ι} (h : i ≠ j) :
    diagonal d i j = 0 := by
  sorry