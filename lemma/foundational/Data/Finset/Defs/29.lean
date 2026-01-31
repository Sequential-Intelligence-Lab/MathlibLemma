import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_empty_iff {α} {s : Finset α} :
    s ⊆ (∅ : Finset α) ↔ s = ∅ := by
  constructor <;> intro h
  -- First direction: If s ⊆ ∅, then s = ∅.
  -- We use the fact that the empty set has no elements.
  -- If s were not empty, there would be an element in s, which would also be in ∅, leading to a contradiction.
  <;> simp_all [Finset.ext_iff]
  <;> aesop