import Mathlib

lemma diagonal_smul_left
    [Zero α] [SMulZeroClass R α] [SMul R α] [DecidableEq n]
    [SMul R (Matrix n n α)]
    (r : R) (d : n → α) :
    Matrix.diagonal (fun i => r • d i) = (r : R) • Matrix.diagonal d := by
  sorry