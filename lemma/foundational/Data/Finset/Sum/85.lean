import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toLeft_empty {α} :
    (∅ : Finset (α ⊕ PUnit)).toLeft = (∅ : Finset α) := by
  -- Use the `simp` tactic to simplify the expression, leveraging known properties of `toLeft` and `Finset`.
  simp [Finset.toLeft, Finset.image_empty]
  -- The `simp` tactic will automatically apply the definitions and simplify the expression to show that `toLeft ∅ = ∅`.
  <;> simp
  -- Additional `simp` calls ensure that all simplifications are applied correctly.
  <;> simp
  <;> simp
  <;> simp