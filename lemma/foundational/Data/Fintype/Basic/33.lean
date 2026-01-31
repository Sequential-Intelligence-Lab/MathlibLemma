import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fintype.card_fun_fin {n : ℕ} (β : Type*) [Fintype β] :
    Fintype.card (Fin n → β) = (Fintype.card β)^n := by
  -- Use the cardinality of the function type, which is the same as the cardinality of the set of functions from Fin n to β.
  rw [Fintype.card_fun]
  -- Simplify the expression using the cardinality of β and the fact that the cardinality of Fin n is n.
  <;> simp [Fintype.card_fin]
  -- Use the property of powers to confirm the equality.
  <;> rw [Nat.pow_succ]
  -- Confirm the equality using reflexivity.
  <;> rfl