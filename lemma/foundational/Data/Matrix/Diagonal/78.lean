import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_submatrix'
    {m n : Type _} {α : Type _}
    (A : Matrix m m α) (e : n → m) :
    Matrix.diag (A.submatrix e e) = Matrix.diag A ∘ e := by
  ext i
  -- For each index i, compute the diagonal element of the submatrix and compare it to the composition of the diagonal of A with e.
  simp [Matrix.diag, Matrix.submatrix, Function.comp_apply]
  -- Simplify the expressions using the definitions of diag, submatrix, and function composition.
  <;> aesop