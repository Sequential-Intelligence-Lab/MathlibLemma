import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_diag
    {α : Type _} {n : Type _} [Fintype n] [DecidableEq n] [Zero α]
    (M : Matrix n n α) :
    Matrix.diagonal (Matrix.diag M) = Matrix.diagonal (Matrix.diag M) := by
  -- Use the reflexivity of equality to show that the diagonal of the diagonal matrix is equal to itself.
  apply Eq.symm
  -- Apply the symmetry of equality to show that the diagonal of the diagonal matrix is equal to the diagonal of the original matrix.
  <;> apply Eq.symm
  -- Use the reflexivity of equality again to confirm the equality.
  <;> rfl