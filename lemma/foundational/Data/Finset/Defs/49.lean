import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.forall_mem_subtype_iff {α} (s : Finset α) (p : {a // a ∈ s} → Prop) :
    (∀ x : {a // a ∈ s}, p x) ↔ ∀ a (h : a ∈ s), p ⟨a, h⟩ := by
  have h_imp : (∀ x : {a // a ∈ s}, p x) → (∀ a (h : a ∈ s), p ⟨a, h⟩) := by
    intro h₁ a h₂
    have h₃ : p ⟨a, h₂⟩ := h₁ ⟨a, h₂⟩
    exact h₃
  
  have h_converse : (∀ a (h : a ∈ s), p ⟨a, h⟩) → (∀ x : {a // a ∈ s}, p x) := by
    intro h₁ x
    have h₂ : x.val ∈ s := x.property
    have h₃ : p ⟨x.val, h₂⟩ := h₁ x.val h₂
    -- Since x is a subtype element, we need to show that p x holds.
    -- But ⟨x.val, h₂⟩ is exactly x, so we can use the fact that p ⟨x.val, h₂⟩ holds.
    have h₄ : (⟨x.val, h₂⟩ : {a // a ∈ s}) = x := by
      cases x <;> simp_all [Subtype.mk.injEq]
      <;> aesop
    -- Now we can use the fact that p ⟨x.val, h₂⟩ holds to conclude that p x holds.
    rw [h₄] at h₃
    exact h₃
  
  have h_main : (∀ x : {a // a ∈ s}, p x) ↔ ∀ a (h : a ∈ s), p ⟨a, h⟩ := by
    constructor
    · -- Prove the forward direction: (∀ x : {a // a ∈ s}, p x) → (∀ a (h : a ∈ s), p ⟨a, h⟩)
      exact h_imp
    · -- Prove the backward direction: (∀ a (h : a ∈ s), p ⟨a, h⟩) → (∀ x : {a // a ∈ s}, p x)
      exact h_converse
  
  exact h_main