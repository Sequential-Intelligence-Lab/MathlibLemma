import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Bornology.isBounded_empty_iff [Bornology α] :
    IsBounded (∅ : Set α) ↔ True := by
  -- Construct the equivalence by proving both directions.
  constructor <;> simp [IsBounded]
  -- First direction: If IsBounded (∅ : Set α) holds, then True holds.
  -- This is trivially true because True is always true.
  -- Second direction: If True holds, then IsBounded (∅ : Set α) holds.
  -- This is proven by the fact that the empty set is always bounded.
  <;> exact ⟨∅, by simp⟩