import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Multiset.map_comp (f : β → γ) (g : α → β) (s : Multiset α) :
    s.map (fun x => f (g x)) = (s.map g).map f := by
  -- Use the property of map composition for multisets
  rw [Multiset.map_map]
  -- Simplify the expression using the definition of function composition
  <;> simp [Function.comp_apply]
  -- The above steps directly show that the left-hand side equals the right-hand side
  <;> rfl