import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_antisymm_iff' {α} {s t : Finset α} :
    s = t ↔ s ⊆ t ∧ t ⊆ s := by
  have h_imp : s = t → s ⊆ t ∧ t ⊆ s := by
    intro h
    have h₁ : s ⊆ t := by
      rw [h]
      <;> exact Finset.Subset.refl t
    have h₂ : t ⊆ s := by
      rw [h]
      <;> exact Finset.Subset.refl s
    exact ⟨h₁, h₂⟩
  
  have h_conv : (s ⊆ t ∧ t ⊆ s) → s = t := by
    intro h
    have h₁ : s ⊆ t := h.1
    have h₂ : t ⊆ s := h.2
    apply Finset.Subset.antisymm h₁ h₂
  
  have h_main : s = t ↔ s ⊆ t ∧ t ⊆ s := by
    constructor
    · -- Prove the forward direction: s = t → s ⊆ t ∧ t ⊆ s
      intro h
      exact h_imp h
    · -- Prove the backward direction: s ⊆ t ∧ t ⊆ s → s = t
      intro h
      exact h_conv h
  
  exact h_main