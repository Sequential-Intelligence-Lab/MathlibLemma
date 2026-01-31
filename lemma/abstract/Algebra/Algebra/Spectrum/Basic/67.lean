import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.subset_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A} :
    spectrum R a ⊆ spectrum R b ↔
      ∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a) := by
  have h_forward : spectrum R a ⊆ spectrum R b → ∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a) := by
    intro h_subset r h_unit
    by_contra h_not_unit
    have h₁ : r ∈ spectrum R a := by
      simp only [spectrum, Set.mem_setOf_eq]
      exact h_not_unit
    have h₂ : r ∈ spectrum R b := h_subset h₁
    have h₃ : ¬IsUnit (algebraMap R A r - b) := by
      simp only [spectrum, Set.mem_setOf_eq] at h₂
      exact h₂
    exact h₃ h_unit
  
  have h_backward : (∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a)) → spectrum R a ⊆ spectrum R b := by
    intro h r hr
    -- Assume r is in the spectrum of a, i.e., (r - a) is not invertible.
    -- We need to show that r is also in the spectrum of b, i.e., (r - b) is not invertible.
    have h₁ : ¬IsUnit (algebraMap R A r - a) := by
      simp only [spectrum, Set.mem_setOf_eq] at hr
      exact hr
    -- Suppose for contradiction that (r - b) is invertible.
    by_contra h₂
    -- Then by the given condition, (r - a) would also be invertible, contradicting h₁.
    have h₃ : IsUnit (algebraMap R A r - b) := by
      simp only [spectrum, Set.mem_setOf_eq] at h₂
      -- If r is not in the spectrum of b, then (r - b) is invertible.
      -- This is a contradiction because we assumed (r - b) is not invertible.
      tauto
    have h₄ : IsUnit (algebraMap R A r - a) := h r h₃
    exact h₁ h₄
  
  have h_main : spectrum R a ⊆ spectrum R b ↔ ∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a) := by
    constructor
    · -- Prove the forward direction: if spectrum R a ⊆ spectrum R b, then for all r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a)
      intro h
      exact h_forward h
    · -- Prove the backward direction: if for all r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a), then spectrum R a ⊆ spectrum R b
      intro h
      exact h_backward h
  
  exact h_main