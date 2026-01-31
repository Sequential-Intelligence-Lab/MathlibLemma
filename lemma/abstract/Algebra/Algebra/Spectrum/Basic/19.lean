import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem algebra_153987 {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A] (a : A) :
    Disjoint (spectrum R a) (resolventSet R a) := by
  have h1 : spectrum R a ∩ resolventSet R a = ∅ := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false]
    intro h
    rcases h with ⟨h2, h3⟩
    have h6 : ¬ IsUnit (a - algebraMap R A x) := by
      have h7 : x ∈ spectrum R a := h2
      simp only [spectrum, Set.mem_setOf_eq] at h7 ⊢
      all_goals try tauto
    have h7 : IsUnit (a - algebraMap R A x) := by
      have h8 : x ∈ resolventSet R a := h3
      simp only [resolventSet, Set.mem_setOf_eq] at h8 ⊢
      all_goals try tauto
    contradiction
  rw [Set.disjoint_iff_inter_eq_empty]
  exact h1