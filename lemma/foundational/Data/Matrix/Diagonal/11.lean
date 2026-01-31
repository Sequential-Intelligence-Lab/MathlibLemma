import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_inj {α : Type u} {n : Type v} [Zero α] [DecidableEq n] :
    Function.LeftInverse
      (Matrix.diag : Matrix n n α → n → α)
      (Matrix.diagonal : (n → α) → Matrix n n α) := by
  -- Introduce an arbitrary diagonal matrix `x` and simplify the goal using properties of `Matrix.diagonal` and `Matrix.diag`.
  intro x
  simp [Matrix.diagonal]
  -- Use the `aesop` tactic to automatically solve the remaining goals by applying known lemmas and rules.
  <;> aesop