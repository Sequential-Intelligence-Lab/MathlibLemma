import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.min_eq_right {n : ℕ} {i j : Fin n} (h : j ≤ i) : min i j = j := by
  -- Use the given hypothesis `j ≤ i` to apply the lemma `min_eq_right`
  simp_all [min_eq_right]
  -- The `simp_all` command simplifies the goal using the lemma `min_eq_right`, which states that if `j ≤ i`, then `min i j = j`
  <;> linarith