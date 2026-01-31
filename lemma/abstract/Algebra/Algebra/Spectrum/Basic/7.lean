import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.isClosed_of_isClosed_resolventSet
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommSemiring R] [Ring A] [Algebra R A]
    (a : A)
    (h : IsOpen (resolventSet R a)) :
    IsClosed (spectrum R a) := by
  have h_set_compl : spectrum R a = (resolventSet R a)ᶜ := by
    apply Set.ext
    intro r
    simp [spectrum, resolventSet, Set.mem_compl_iff]
    <;>
    tauto
  
  have h_main : IsClosed (spectrum R a) := by
    rw [h_set_compl]
    have h₁ : IsClosed (resolventSet R a)ᶜ := by
      rw [isClosed_compl_iff]
      exact h
    exact h₁
  
  exact h_main