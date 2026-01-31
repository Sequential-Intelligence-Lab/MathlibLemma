import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Bornology.isBounded_finset [Bornology α] (s : Finset α) :
    IsBounded (↑s : Set α) := by
  have h₁ : (↑s : Set α).Finite := by
    apply Set.toFinite
    <;> simp [Finset.finite_toSet]
  
  have h₂ : IsBounded (↑s : Set α) := by
    apply Set.Finite.isBounded h₁
  
  exact h₂