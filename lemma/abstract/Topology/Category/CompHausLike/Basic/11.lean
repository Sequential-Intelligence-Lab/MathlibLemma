import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.hasProp_of_mk {P : TopCat.{u} → Prop}
    (X : Type u) [TopologicalSpace X] [CompactSpace X] [T2Space X]
    (hP : P (TopCat.of X)) :
    CompHausLike.HasProp P X := by
  exact ⟨hP⟩