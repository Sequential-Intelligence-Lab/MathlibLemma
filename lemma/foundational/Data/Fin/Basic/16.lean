import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.succ_eq_last_iff {n : ℕ} {i : Fin n} : (i.succ : Fin (n + 1)) = Fin.last n ↔ i.val = n - 1 := by
  -- Construct the equivalence by proving both directions.
  constructor <;> simp_all [Fin.succ, Nat.succ_eq_add_one, Fin.last]
  -- Forward direction: Assume i.val = n - 1, then i.succ = n = last n.
  <;> omega
  -- Reverse direction: Assume i.succ = last n, then i.val = n - 1.
  <;> omega