import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.add_right_cancel_iff {n : ℕ} {i j k : Fin n} :
    i + k = j + k ↔ i = j := by
  constructor <;> intro h
  -- Prove the forward direction: if i + k = j + k, then i = j
  -- Given i + k = j + k, we can cancel k on both sides to get i = j
  <;> simp_all [Fin.ext_iff]
  -- Prove the reverse direction: if i = j, then i + k = j + k
  -- Given i = j, adding k to both sides directly gives i + k = j + k
  <;> linarith