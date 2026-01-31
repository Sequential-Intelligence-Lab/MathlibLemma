import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.ker_eq_ker {α} {f g : Filter α} (h : f = g) :
    f.ker = g.ker := by
  -- Substitute the given equality f = g into the goal.
  rw [h]
  -- Since f = g, the kernels of f and g are the same.
  <;> rfl