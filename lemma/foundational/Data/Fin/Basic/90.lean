import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.one_add_succ {n : ℕ} (i : Fin n) :
    (1 : ℕ) + i.succ = ((1 : ℕ) + i).succ := by
  -- Extract the underlying natural number from the Fin type
  obtain ⟨i, hi⟩ := i
  -- Simplify the expressions using the properties of Fin and Nat
  simp [Fin.succ, hi, Nat.succ_eq_add_one, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
  -- Use the ring tactic to simplify and verify the equality
  <;> ring