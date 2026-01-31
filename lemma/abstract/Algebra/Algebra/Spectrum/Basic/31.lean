import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.le_of_isUnit_sub_le_isUnit_sub
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A}
    (h : ∀ r : R, IsUnit (algebraMap R A r - b) → IsUnit (algebraMap R A r - a)) :
    spectrum R a ⊆ spectrum R b := by
  have h_main : ∀ (r : R), r ∈ spectrum R a → r ∈ spectrum R b := by
    intro r hr
    have h₁ : ¬IsUnit (algebraMap R A r - a) := hr
    -- Assume for contradiction that IsUnit (algebraMap R A r - b)
    by_contra h₂
    -- If ¬(r ∈ spectrum R b), then IsUnit (algebraMap R A r - b)
    have h₃ : IsUnit (algebraMap R A r - b) := by
      simp only [spectrum, Set.mem_setOf_eq] at h₂
      exact not_not.mp (by tauto)
    -- By the given condition, IsUnit (algebraMap R A r - a)
    have h₄ : IsUnit (algebraMap R A r - a) := h r h₃
    -- This contradicts h₁: ¬IsUnit (algebraMap R A r - a)
    exact h₁ h₄
  
  have h_final : spectrum R a ⊆ spectrum R b := by
    intro r hr
    exact h_main r hr
  
  exact h_final