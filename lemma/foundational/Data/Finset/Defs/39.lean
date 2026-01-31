import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.mem_of_subset_coe {α} {s t : Finset α} {a : α}
    (h : (s : Set α) ⊆ (t : Set α)) (ha : a ∈ s) : a ∈ t := by
  have h1 : a ∈ (s : Set α) := by
    simp [Finset.mem_coe, ha]
  have h2 : a ∈ (t : Set α) := h h1
  simp [Finset.mem_coe] at h2 ⊢
  all_goals try tauto