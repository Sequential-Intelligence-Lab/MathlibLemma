import Mathlib

open Matrix

lemma diag_updateColumn_diag
    {α : Type _} {n : Type _} [DecidableEq n] [Zero α]
    (d : n → α) (i : n) :
    (Matrix.updateCol (Matrix.diagonal d) i (Pi.single i (d i))).diag = d := by
  sorry