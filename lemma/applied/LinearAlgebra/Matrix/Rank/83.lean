import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.rank_antisymm_eq_rank
    {R n} [Field R] [Fintype n] [DecidableEq n]
    (A : Matrix n n R)
    (h : Matrix.transpose A = -A) :
    Matrix.rank A = Matrix.rank (Matrix.transpose A) := by
  -- Use the general property that the rank of a matrix is equal to the rank of its transpose.
  rw [Matrix.rank_transpose]
  -- Simplify the expression using the given antisymmetric property A^T = -A.
  <;> simp [h]
  -- The simplification shows that the rank of A is equal to the rank of -A, which is the same as the rank of A.
  <;> rfl