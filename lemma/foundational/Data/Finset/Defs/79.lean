import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.forall_subset_iff {α} {s t : Finset α} :
    (∀ a ∈ s, a ∈ t) ↔ s ⊆ t := by
  constructor <;> intro h
  -- Forward direction: Assume ∀ a ∈ s, a ∈ t, and show s ⊆ t
  <;> simp_all [Finset.subset_def]
  -- Use the definition of subset to rewrite the goal
  <;> intro a ha
  -- Introduce an arbitrary element a in s
  <;> apply h <;> assumption
  -- Apply the assumption h to a, using ha to conclude a ∈ t
  <;> simp_all [Finset.subset_def]
  -- Use the definition of subset to rewrite the goal
  <;> intro a ha
  -- Introduce an arbitrary element a in s
  <;> apply h <;> assumption
  -- Apply the assumption h to a, using ha to conclude a ∈ t