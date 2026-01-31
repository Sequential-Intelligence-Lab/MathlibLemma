import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_mulVec_row
    [Fintype n] [DecidableEq n] [NonUnitalSemiring α]
    (A : Matrix m n α) (v : n → α) (i : m) :
    Matrix.mulVec A v i =
      ∑ j : n, A i j * v j := by
  -- By the definition of `Matrix.mulVec`, the i-th component of the product `Av` is the sum over `j` of `A i j * v j`.
  simp [Matrix.mulVec]
  -- This completes the proof as the definition directly matches the required form.
  <;> rfl