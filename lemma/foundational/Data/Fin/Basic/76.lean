import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.rev_strictMono {n : ℕ} : StrictAnti (@Fin.rev n) := by
  intro i j h
  -- Simplify the goal using the definition of `Fin.rev` and properties of natural number subtraction.
  simp_all [Fin.rev_eq, Nat.sub_lt_sub_right]
  -- Use the `omega` tactic to solve the resulting inequality.
  <;> omega