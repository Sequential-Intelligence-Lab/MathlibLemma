import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.card_univ_fin (n : ℕ) :
    (Finset.univ : Finset (Fin n)).card = n := by
  -- Use the lemma `Finset.card_univ` which states that the cardinality of the universal set for a type with `n` elements is `n`.
  rw [Finset.card_univ]
  -- The lemma `Finset.card_univ` directly gives us the result, so we can use `simp` to simplify the expression.
  <;> simp
  -- Since `Finset.card_univ` directly applies, we can use `done` to complete the proof.
  <;> done