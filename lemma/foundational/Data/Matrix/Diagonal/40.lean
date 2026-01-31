import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_map_ringHom [Semiring α] [Semiring β]
    (f : α →+* β) (A : Matrix n n α) :
    Matrix.diag (Matrix.map A f) = fun i => f (Matrix.diag A i) := by
  -- Simplify the expression using the definition of `Matrix.diag` and `Matrix.map`.
  simp [Matrix.diag, Matrix.map]
  -- Use the fact that `f` is a ring homomorphism to conclude the proof.
  <;> congr
  <;> ext i
  <;> simp [f.map_mul]
  <;> rfl