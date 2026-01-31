import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sheaf_section_image_eq
    (f : α → β) :
    Set.range f = {y | ∃ x : α, f x = y} := by
  ext y
  constructor <;> simp (config := {contextual := true}) [Set.mem_range]
  <;> aesop