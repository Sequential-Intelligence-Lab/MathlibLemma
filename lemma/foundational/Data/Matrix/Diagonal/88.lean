import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_updateColumn_diag
    {α : Type _} {n : Type _} [DecidableEq n] [Zero α]
    (d : n → α) (i : n) :
    (Matrix.updateCol (Matrix.diagonal d) i (Pi.single i (d i))).diag = d := by
  ext j
  -- For each index j, we need to show that the diagonal entry remains d j.
  by_cases h : j = i
  -- Case 1: j = i
  -- The (i, i) entry after update is d i, which matches the original diagonal.
  simp_all [Matrix.updateCol_apply, Matrix.diagonal_apply]
  -- Case 2: j ≠ i
  -- The (j, j) entry is not in the updated column, so it remains d j.
  simp_all [Matrix.updateCol_apply, Matrix.diagonal_apply]
  <;> aesop