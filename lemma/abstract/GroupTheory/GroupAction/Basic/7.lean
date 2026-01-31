import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.mem_fixedPoints_iff_smul_eq_self' [Monoid M] [MulAction M α] {a : α} :
    a ∈ MulAction.fixedPoints M α ↔
      ∀ g : M, g • a = a := by
  constructor <;> simp [MulAction.fixedPoints, Set.mem_setOf_eq]
  -- Forward direction: If `a` is in the fixed points, then for all `g` in `M`, `g • a = a`.
  <;> intro h
  -- Reverse direction: If for all `g` in `M`, `g • a = a`, then `a` is in the fixed points.
  <;> exact fun g => h g