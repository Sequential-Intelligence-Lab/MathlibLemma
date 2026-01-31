import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.isClosed_of_compact_resolventSet
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) (h : IsClosed (resolventSet R a)) :
    IsOpen (spectrum R a) := by
  have h₁ : spectrum R a = (resolventSet R a)ᶜ := by
    apply Set.ext
    intro x
    simp only [spectrum, resolventSet, Set.mem_compl_iff, Set.mem_setOf_eq]
    <;>
    simp_all [not_isUnit]
    <;>
    tauto
  
  have h₂ : IsOpen (spectrum R a) := by
    rw [h₁]
    -- Use the fact that the complement of a closed set is open.
    have h₃ : IsOpen ((resolventSet R a)ᶜ) := by
      apply isOpen_compl_iff.mpr
      exact h
    exact h₃
  
  exact h₂