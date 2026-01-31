import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.Eventually.const {α} {p : Prop} (f : Filter α) (hp : p) :
    ∀ᶠ _x in f, p := by
  -- Simplify the goal using the fact that `p` is true.
  simp [hp]
  -- Since `p` is true, the set of all `x` (i.e., `Univ`) satisfies `p`.
  -- By the properties of a filter, `Univ` is in `f.sets`, thus proving the lemma.
  <;> exact mem_univ _