import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.ssubset_empty_iff {α} {s : Finset α} :
    s ⊂ (∅ : Finset α) ↔ False := by
  -- Simplify the statement using the definition of strict subset.
  simp [Finset.ssubset_def, Finset.not_mem_empty]
  -- Use classical reasoning to handle the logical implications.
  <;> classical tauto
  -- Use Aesop to automatically handle any remaining logical implications.
  <;> aesop