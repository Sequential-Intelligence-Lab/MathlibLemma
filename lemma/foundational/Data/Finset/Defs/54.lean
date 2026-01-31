import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_coe_iff {α} {s t : Finset α} :
    (s : Set α) ⊆ (t : Set α) ↔ s ⊆ t := by
  -- Construct the proof by proving both directions of the equivalence
  constructor <;> intro h
  -- (⇒ Direction): Assume s ⊆ t, prove that the set of elements in s is a subset of the set of elements in t
  <;> simp_all [Finset.subset_def]
  -- (⇐ Direction): Assume the set of elements in s is a subset of the set of elements in t, prove that s ⊆ t
  <;> exact fun x hx => h hx