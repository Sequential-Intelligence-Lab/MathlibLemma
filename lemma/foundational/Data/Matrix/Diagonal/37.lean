import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_comp_diag
  [DecidableEq n] [Zero α] (A : Matrix n n α) :
    Matrix.diag (Matrix.diagonal (Matrix.diag A : n → α)) =
      (Matrix.diag A : n → α) := by
  -- Extract the diagonal of A to form a vector v.
  let v := Matrix.diag A
  -- Construct a diagonal matrix D from the vector v.
  let D := Matrix.diagonal v
  -- Extract the diagonal of D to form a vector w.
  let w := Matrix.diag D
  -- Show that w is equal to v, which is the diagonal of A.
  simp [v, D, w]
  -- Since D is a diagonal matrix with the same diagonal elements as A,
  -- extracting its diagonal yields the original vector v.
  <;> ext i
  <;> simp [Matrix.diag_diagonal]
  <;> aesop