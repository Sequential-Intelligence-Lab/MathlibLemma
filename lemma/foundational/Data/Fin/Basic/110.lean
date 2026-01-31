import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.succ_lt_iff {n : ℕ} {i j : Fin n} :
    i.succ < j.succ ↔ i < j := by
  -- Construct the equivalence by proving both directions.
  constructor <;> intro h
  -- Direction 1: If i < j, then i.succ < j.succ.
  -- Use the fact that the successor function preserves the order.
  <;> simp_all [Fin.succ_lt_succ_iff]
  -- Direction 2: If i.succ < j.succ, then i < j.
  -- Use the fact that the successor function preserves the order.
  <;> linarith