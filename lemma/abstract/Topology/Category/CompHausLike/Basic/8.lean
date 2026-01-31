import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CompHausLike.of_injective {P : TopCat.{u} → Prop}
    (X : Type u) [TopologicalSpace X] [CompactSpace X] [T2Space X]
    [CompHausLike.HasProp P X] :
    Function.Injective (fun _ : Unit => (CompHausLike.of P X)) := by
  -- Since `Unit` has only one element, the function is trivially injective.
  simp [Function.Injective]
  -- The `simp` tactic simplifies the goal using the fact that `Unit` has only one element.
  <;> aesop