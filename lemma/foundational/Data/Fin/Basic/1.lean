import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.eq_last_of_val_eq_sub_one {n : ℕ} (i : Fin (n + 1)) (h : i.val = n) : i = Fin.last n := by
  -- Use the property that two Fin elements are equal if their val fields are equal.
  rw [Fin.ext_iff]
  -- Simplify the goal using the given hypothesis and the definition of Fin.last.
  simp_all [Fin.last]
  -- Use the omega tactic to solve the resulting arithmetic problem.
  <;> omega