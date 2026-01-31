import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_add_one_le_log_succ (n : ℕ) :
    Real.log (n + 1) ≤ Real.log (n.succ) := by
  -- Simplify the expressions using known equalities and definitions.
  simp [Nat.succ_eq_add_one]
  -- Apply the reflexivity of the inequality to conclude the proof.
  <;> apply le_refl