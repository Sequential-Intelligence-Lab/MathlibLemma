import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_diagonal_map
    {m : Type _} [DecidableEq m] [Fintype m]
    {α β : Type _} [Zero α] [Zero β]
    (f : α → β) (hf : f 0 = 0) (d : m → α) :
    Matrix.diag ((Matrix.diagonal d).map f) = fun i : m => f (d i) := by
  ext i
  simp [Matrix.diag_apply, Matrix.diagonal]
  -- For each index `i`, the `i`-th diagonal element of the resulting matrix is `f (d i)`.
  -- This matches the definition of the right-hand side of the lemma.
  <;> aesop