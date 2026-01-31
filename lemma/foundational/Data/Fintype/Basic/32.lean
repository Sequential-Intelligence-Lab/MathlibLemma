import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fintype.card_pi_fin {n : ℕ} (α : Fin n → Type*)
    [∀ i, Fintype (α i)] :
    Fintype.card (∀ i, α i) = ∏ i, Fintype.card (α i) := by
  -- Use the `Fintype.card_pi` lemma which states that the cardinality of the product type is the product of the cardinalities.
  rw [Fintype.card_pi]
  -- Simplify the expression using the fact that the product of the cardinalities of the finite types is the cardinality of the product type.
  <;> simp_all [Finset.prod_range_succ]
  -- Use the `decide` tactic to handle any remaining goals that are straightforward.
  <;> decide