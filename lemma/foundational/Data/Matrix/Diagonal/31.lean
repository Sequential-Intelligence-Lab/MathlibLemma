import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_scalar [Semiring α] (n : Type*) [Fintype n] [DecidableEq n] (a : α) :
    Matrix.diag (Matrix.scalar n a) = fun _ : n => a := by
  -- Use the `ext` tactic to generalize over any index `i : n`
  ext i
  -- Simplify the expression using the definition of `Matrix.diag` and properties of `Matrix.scalar`
  simp [Matrix.diag, Matrix.scalar]
  -- Use the `aesop` tactic to automatically solve the remaining goals
  <;> aesop