import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.mem_principal_iff_subset {α} {s t : Set α} :
    s ∈ (Filter.principal t : Filter α) ↔ t ⊆ s := by
  -- Simplify the membership in the principal filter using the definition of principal filter.
  simp [Filter.principal, SetLike.mem_coe, Set.mem_setOf_eq]
  -- The simp tactic will automatically handle the equivalence between membership in the principal filter and the subset relation.
  <;> simp_all
  -- The simp_all tactic will clean up any remaining simplicial goals.
  <;> tauto