import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.mem_sets_iff {α} (f : Filter α) (s : Set α) :
    s ∈ f.sets ↔ s ∈ f := by
  constructor <;> simp_all [Set.mem_setOf_eq]
  -- Forward direction: If `s ∈ f.sets`, then `s ∈ f`.
  -- Reverse direction: If `s ∈ f`, then `s ∈ f.sets`.
  -- `simp_all [Set.mem_setOf_eq]` simplifies the membership conditions using the definition of `Set.mem_setOf_eq`.
  <;> tauto