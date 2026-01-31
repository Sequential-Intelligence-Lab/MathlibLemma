import Mathlib

open Matrix

lemma diag_blockDiagonal'
    {ι n : Type _} {α : Type _}
    [Zero α] [DecidableEq ι] [DecidableEq n]
    [Fintype ι] [Fintype n]
    (M : ι → Matrix n n α) (i : n × ι) :
    Matrix.diag (Matrix.blockDiagonal M) i = (M i.2) i.1 i.1 := by
  sorry