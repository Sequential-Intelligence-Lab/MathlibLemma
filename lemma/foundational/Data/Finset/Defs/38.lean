import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.ssubset_of_ssubset_coe {α} {s t : Finset α}
    (h : (s : Set α) ⊂ (t : Set α)) : s ⊂ t := by
  have h_subset : s ⊆ t := by
    intro x hx
    have h₁ : (s : Set α) ⊆ (t : Set α) := h.1
    have h₂ : (x : α) ∈ (s : Set α) := by exact hx
    have h₃ : (x : α) ∈ (t : Set α) := h₁ h₂
    exact h₃
  
  have h_ne : s ≠ t := by
    intro h_eq
    have h₁ : (t : Set α) ⊆ (s : Set α) := by
      rw [h_eq]
      <;> simp [Set.Subset.refl]
    have h₂ : ¬( (t : Set α) ⊆ (s : Set α) ) := h.2
    exact h₂ h₁
  
  have h_main : s ⊂ t := by
    refine' Finset.ssubset_iff_subset_ne.mpr ⟨h_subset, h_ne⟩
  
  exact h_main