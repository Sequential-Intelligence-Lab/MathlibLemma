import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma isDiag_iff [Zero α] [DecidableEq n] (A : Matrix n n α) :
    Matrix.IsDiag A ↔ ∀ i j, i ≠ j → A i j = 0 := by
  constructor
  -- If A is a diagonal matrix, then all its off-diagonal entries are zero.
  intro h i j hij
  exact h hij
  -- If all off-diagonal entries of A are zero, then A is a diagonal matrix.
  intro h
  intro i j hij
  exact h i j hij