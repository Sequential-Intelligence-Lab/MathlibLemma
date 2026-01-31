import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.le_of_val_le_val {n : ℕ} {i j : Fin n} (h : i.val ≤ j.val) : i ≤ j := by
  have h_main : i ≤ j := by
    rw [Fin.le_iff_val_le_val]
    <;> exact h
  
  exact h_main