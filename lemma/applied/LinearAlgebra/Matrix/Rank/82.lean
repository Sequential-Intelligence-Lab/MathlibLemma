import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.rank_symm_eq_rank
    {R ι} [Field R] [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι R)
    (h : A.transpose = A) :
    A.rank = A.transpose.rank := by
  -- Since A is symmetric, A.transpose = A. Therefore, the rank of A is equal to the rank of A.transpose.
  rw [h]
  -- Simplify the expression to confirm that the rank of A is indeed equal to the rank of A.transpose.
  <;> simp