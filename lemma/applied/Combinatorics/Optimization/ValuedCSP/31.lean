import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma support_comp_subset {α β γ} [Zero γ] (f : β → γ) (g : α → β) :
    Function.support (fun x => f (g x)) ⊆ g ⁻¹' Function.support f := by
  -- Introduce an arbitrary element x in the support of f ∘ g
  intro x hx
  -- Simplify the membership condition in the support of f ∘ g
  simp only [Function.mem_support, Set.mem_preimage, Set.mem_setOf_eq] at hx ⊢
  -- Use the assumption that f(0) = 0 to conclude the proof
  exact hx