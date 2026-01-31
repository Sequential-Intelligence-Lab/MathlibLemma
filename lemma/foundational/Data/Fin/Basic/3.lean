import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.val_inj_iff {n : ℕ} {i j : Fin n} : (i : ℕ) = j ↔ i = j := by
  -- Use the lemma `Fin.ext_iff` to establish the bi-conditional relationship.
  constructor <;> intro h <;> simp_all [Fin.ext_iff]
  <;> linarith