import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.min_eq_left {n : ℕ} {i j : Fin n} (h : i ≤ j) : min i j = i := by
  cases' le_total i j with h' h' <;> simp_all [Fin.min_eq_left]
  <;> simp_all [Fin.min_eq_left]