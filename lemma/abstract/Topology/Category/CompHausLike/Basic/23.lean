import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CompHausLike.compHausLikeToTop_obj_isT2
    (P : TopCat.{u} → Prop) (X : CompHausLike P) :
    T2Space ((CompHausLike.compHausLikeToTop P).obj X) := by
  -- We start by showing that the space is T1, which is a prerequisite for being T2 (Hausdorff).
  apply inferInstance
  -- The space is already known to be T1 due to the properties of the category and the function.
  <;> apply inferInstance
  -- The space is already known to be T2 due to the properties of the category and the function.
  <;> apply inferInstance
  -- The space is already known to be T2 due to the properties of the category and the function.
  <;> apply inferInstance