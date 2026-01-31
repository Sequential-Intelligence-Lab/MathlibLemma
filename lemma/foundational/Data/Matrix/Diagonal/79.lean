import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_map_linear [Semiring α] [Semiring β] (f : α →+* β) (A : Matrix n n α) :
    Matrix.diag (A.map f) = fun i => f (A i i) := by
  -- Extend the equality to each index i
  ext i
  -- Simplify the expression using the definition of Matrix.diag and the properties of the ring homomorphism f
  simp [Matrix.diag, Matrix.map]
  -- Use the ring homomorphism property of f to show that the diagonal entries are equal
  <;> simp [f.map_mul]
  <;> simp [f.map_add]
  <;> simp [f.map_one]
  <;> simp [f.map_zero]