import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Fin.succ_mono {n : ℕ} {i j : Fin n} (hij : i ≤ j) : i.succ ≤ j.succ := by 
  have h1 : i.val ≤ j.val := by 
    exact hij
  have h2 : (i.succ : Fin (n + 1)).val = i.val + 1 := by
    simp [Fin.succ]
  have h3 : (j.succ : Fin (n + 1)).val = j.val + 1 := by
    simp [Fin.succ]
  have h4 : i.val + 1 ≤ j.val + 1 := by
    omega
  have h5 : (i.succ : Fin (n + 1)) ≤ (j.succ : Fin (n + 1)) := by
    simp [Fin.le_def, h2, h3, h4]
  exact h5