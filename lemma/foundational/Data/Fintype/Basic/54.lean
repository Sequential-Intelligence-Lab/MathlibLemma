import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fintype.card_psigma {α : Type*} (β : α → Type*) [Fintype α]
    [∀ a, Fintype (β a)] :
    Fintype.card (Sigma β) = ∑ a : α, Fintype.card (β a) := by
  -- Use the property of cardinality for sigma types
  rw [Fintype.card_sigma]
  -- Simplify the expression using the cardinality of the sigma type
  <;> simp
  -- Use the property of cardinality for finite types
  <;> apply Fintype.card_fintype