import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_image_subtype_val {α} (s : Finset α) :
    s ⊆ (s : Set α).toFinset := by
  have h_main : (s : Set α).toFinset = s := by
    apply Finset.ext
    intro x
    have h₁ : x ∈ (s : Set α).toFinset ↔ x ∈ (s : Set α) := by
      apply Set.mem_toFinset
      <;>
      (try simp_all [Set.Finite])
      <;>
      (try exact Set.Finite.subset (Finset.finite_toSet s) (by simp [Set.mem_setOf_eq]))
      <;>
      (try exact Set.Finite.subset (Finset.finite_toSet s) (by simp [Set.mem_setOf_eq]))
    have h₂ : x ∈ (s : Set α) ↔ x ∈ s := by simp [Set.mem_setOf_eq]
    simp_all [h₁, h₂]
    <;>
    aesop
  
  have h_final : s ⊆ (s : Set α).toFinset := by
    rw [h_main]
    <;>
    simp [Finset.subset_iff]
  
  exact h_final