import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.fixedPoints_prod
    [Monoid M] [MulAction M α] [MulAction M β] :
    MulAction.fixedPoints M (α × β) =
      MulAction.fixedPoints M α ×ˢ MulAction.fixedPoints M β := by
  ext
  constructor <;> simp (config := { contextual := true }) [MulAction.fixedPoints, Prod.forall]
  <;> aesop