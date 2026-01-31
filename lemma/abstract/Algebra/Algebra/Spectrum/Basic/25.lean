import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.image_isUnit_sub_eq_empty
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r : R) (h : IsUnit (algebraMap R A r - a)) :
    spectrum R a ∩ {r} = ∅ := by
  have h₁ : r ∉ spectrum R a := by
    intro h₂
    -- If r were in the spectrum of a, then algebraMap R A r - a would not be a unit.
    have h₃ : ¬IsUnit (algebraMap R A r - a) := by
      simpa [spectrum, Set.mem_setOf_eq] using h₂
    -- But we have the hypothesis that algebraMap R A r - a is a unit, leading to a contradiction.
    exact h₃ h
  
  have h₂ : spectrum R a ∩ {r} = ∅ := by
    apply Set.eq_empty_of_forall_not_mem
    intro x hx
    -- If there were an element x in the intersection, it would have to be r.
    have h₃ : x ∈ spectrum R a := hx.1
    have h₄ : x ∈ ({r} : Set R) := hx.2
    have h₅ : x = r := by simpa using h₄
    -- Substituting x = r into h₃ gives r ∈ spectrum R a, which contradicts h₁.
    rw [h₅] at h₃
    exact h₁ h₃
  
  exact h₂