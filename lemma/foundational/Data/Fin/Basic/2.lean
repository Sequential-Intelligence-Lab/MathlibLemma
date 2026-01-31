import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.ext_val_iff {n : ℕ} {i j : Fin n} : i.val = j.val ↔ i = j := by
  constructor <;> intro h
  -- Prove the forward direction: if i = j, then i.val = j.val
  -- This is straightforward because equal elements have the same value.
  <;> simp_all [Fin.ext_iff]
  -- Prove the reverse direction: if i.val = j.val, then i = j
  -- Since Fin n elements are natural numbers with a bound, equal values imply equal elements.
  <;> aesop