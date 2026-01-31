import Mathlib

lemma diag_updateRow_diag
    {α n} [Zero α] [DecidableEq n] [Inhabited n]
    (d : n → α) (i : n) :
    Matrix.diag ((Matrix.diagonal d).updateRow i (Pi.single i (d i))) = d := by
  sorry