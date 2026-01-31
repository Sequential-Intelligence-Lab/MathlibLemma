import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_iff_forall_mem {α} {s t : Finset α} :
    s ⊆ t ↔ ∀ {a}, a ∈ s → a ∈ t := by
  constructor
  -- First direction: s ⊆ t implies ∀ a, a ∈ s → a ∈ t
  intro h a ha
  exact h ha
  -- Second direction: ∀ a, a ∈ s → a ∈ t implies s ⊆ t
  intro h
  intro a ha
  exact h ha