import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sumEquiv_apply_toLeft {α β} (u : Finset (α ⊕ β)) :
    (Finset.sumEquiv (α := α) (β := β) u).1 = u.toLeft := by
  -- Use the definition of `sumEquiv` and properties of `toLeft`
  simp [Finset.sumEquiv, Finset.toLeft]
  -- The `simp` tactic will automatically apply the correct simplifications
  <;> rfl