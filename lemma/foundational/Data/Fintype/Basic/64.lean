import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finite.exists_eq_card_fintype (α : Type*) [Fintype α] :
    ∃ n, Fintype.card α = n := by
  classical
  -- Use the cardinality of α as the natural number n
  use Fintype.card α
  -- Since Fintype.card α is a natural number, the proof is complete
  <;> simp