import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.zero_lt_iff_ne_zero {n : ℕ} [NeZero n] (i : Fin n) : 0 < i ↔ i ≠ 0 := by
  constructor
  -- Prove that if 0 < i, then i ≠ 0
  intro h
  contrapose! h
  simp_all
  -- Prove that if i ≠ 0, then 0 < i
  intro h
  contrapose! h
  simp_all
  <;> cases i <;> simp_all