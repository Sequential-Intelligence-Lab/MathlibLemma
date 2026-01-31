import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_comp_congr
  [Zero α] [DecidableEq n]
  {d : n → α} {e₁ e₂ : m → n}
  (he : ∀ i, e₁ i = e₂ i) :
  (Matrix.diagonal d).submatrix e₁ e₁ = (Matrix.diagonal d).submatrix e₂ e₂ := by
  -- Use the fact that the submatrix of a diagonal matrix is determined by the diagonal entries and the index functions.
  ext i j
  -- Simplify the expression using the properties of diagonal matrices and submatrices.
  simp [Matrix.submatrix, Matrix.diagonal, he]
  -- Since the index functions are equal, the submatrices are equal.
  <;> simp_all