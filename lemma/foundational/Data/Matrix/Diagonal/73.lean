import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_blockDiagonal'
    {ι n : Type _} {α : Type _}
    [Zero α] [DecidableEq ι] [DecidableEq n]
    [Fintype ι] [Fintype n]
    (M : ι → Matrix n n α) (i : n × ι) :
    Matrix.diag (Matrix.blockDiagonal M) i = (M i.2) i.1 i.1 := by
  -- Simplify the expression using the definition of the diagonal of a block diagonal matrix.
  simp [Matrix.diag, Matrix.blockDiagonal]
  -- Use the fact that the diagonal of a block diagonal matrix consists of the diagonals of the individual blocks.
  <;> aesop
  <;> rfl
  <;> aesop
  <;> rfl