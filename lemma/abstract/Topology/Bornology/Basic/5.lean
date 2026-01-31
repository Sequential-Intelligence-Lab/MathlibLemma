import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Bornology.isBounded_of_image_subtype_val [Bornology α] {s : Set α}
    (hs : IsBounded (Subtype.val '' (Set.univ : Set {x : α // x ∈ s}))) :
    IsBounded s := by
  have h_subset : Subtype.val '' (Set.univ : Set {x : α // x ∈ s}) ⊆ s := by
    intro y hy
    rcases hy with ⟨⟨x, hx⟩, _, rfl⟩
    exact hx
  
  have h_superset : s ⊆ Subtype.val '' (Set.univ : Set {x : α // x ∈ s}) := by
    intro y hy
    have h : y ∈ s := hy
    refine' ⟨⟨y, h⟩, Set.mem_univ _, _⟩
    <;> simp [Subtype.val]
    <;> aesop
  
  have h_eq : Subtype.val '' (Set.univ : Set {x : α // x ∈ s}) = s := by
    apply Set.Subset.antisymm
    · -- Prove the forward inclusion
      exact h_subset
    · -- Prove the reverse inclusion
      exact h_superset
  
  have h_main : IsBounded s := by
    have h₁ : IsBounded (Subtype.val '' (Set.univ : Set {x : α // x ∈ s})) := hs
    have h₂ : Subtype.val '' (Set.univ : Set {x : α // x ∈ s}) = s := h_eq
    rw [h₂] at h₁
    exact h₁
  
  exact h_main