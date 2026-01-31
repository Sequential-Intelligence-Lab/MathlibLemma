import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_diagonal_submatrix [Zero α] [DecidableEq m] (d : m → α) (e : n → m) :
    Matrix.diag ((Matrix.diagonal d).submatrix e e) = d ∘ e := by
  -- For each index i in n, we need to show that the diagonal entry of the resulting matrix matches (d ∘ e)(i).
  ext i
  -- The submatrix extraction and diagonal extraction operations are applied to the diagonal matrix.
  -- Since the original matrix is diagonal, the submatrix will have non-zero entries only where the row and column indices are equal.
  -- Applying diag to the submatrix extracts the diagonal entries, which correspond to d(e(i)) for each index i.
  simp [Matrix.submatrix, Matrix.diag]
  -- Simplify the expression using the properties of submatrix and diag.
  -- The resulting expression will match the composition d ∘ e.
  <;> split_ifs <;> simp_all
  <;> aesop