import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.univ_fin_product_univ_fin (m n : ℕ) :
    (Finset.univ : Finset (Fin m × Fin n)) =
      (Finset.univ : Finset (Fin m)).product (Finset.univ : Finset (Fin n)) := by
  -- Use the `simp` tactic to simplify the expression and confirm the equality.
  simp [Finset.univ, Finset.product]
  -- The `simp` tactic will apply various simplification rules to show that both sides of the equation are the same.
  -- Specifically, it will use the definitions of `Finset.univ` and the product type to confirm the equality.
  <;> rfl