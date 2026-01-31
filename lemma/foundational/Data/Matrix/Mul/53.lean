import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma vecMul_stdBasis [NonAssocSemiring α] [Fintype m] [DecidableEq m]
    (A : Matrix m n α) (i : m) :
    Matrix.vecMul (Pi.single i 1 : m → α) A = A.row i := by
  -- Simplify the expression using the definition of vecMul and properties of Pi.single
  simp [Matrix.vecMul, Pi.single_apply]
  -- Use the fact that the standard basis vector Pi.single i 1 has a 1 at position i and 0 elsewhere
  -- This allows us to directly equate the result of the multiplication to the i-th row of A
  <;> aesop