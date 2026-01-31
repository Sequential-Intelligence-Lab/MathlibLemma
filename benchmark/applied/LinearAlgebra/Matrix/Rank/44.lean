import Mathlib

lemma Matrix.rank_upperTriangular_le_card_nonzero_diag
    {R n} [Field R] [DecidableEq n] [Fintype n] [LT n]
    (A : Matrix n n R)
    (h : ∀ i j, i < j → A i j = 0)
    [Fintype { i // A i i ≠ 0 }] :
    A.rank ≤ Fintype.card {i // A i i ≠ 0} := by
  sorry