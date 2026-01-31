import Mathlib

open Matrix

@[simp]
lemma diagonal_apply_ne_iff
  {ι α : Type _} [Zero α] [DecidableEq ι] (d : ι → α) {i j : ι} (h : i ≠ j) :
    diagonal d i j = 0 := by
  classical
  -- `Matrix.diagonal` is defined via an `if` on `i = j`, so with `i ≠ j`
  -- the entry is the off-diagonal case, hence `0`.
  simpa [Matrix.diagonal, h]