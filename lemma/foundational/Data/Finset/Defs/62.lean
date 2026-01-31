import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_univ_iff {α} [Fintype α] (s : Finset α) :
    s ⊆ (Finset.univ : Finset α) := by
  -- Simplify the goal using the fact that s is a subset of the universal set.
  simp [Finset.subset_univ]
  -- Use the fact that s is a subset of the universal set to conclude the proof.
  <;> aesop