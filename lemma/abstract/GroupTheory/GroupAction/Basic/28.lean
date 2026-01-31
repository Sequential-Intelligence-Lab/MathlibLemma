import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.orbit_prod_nonempty_iff
    [Monoid M] [MulAction M α] [MulAction M β] {x : α × β} :
    (MulAction.orbit M x).Nonempty ↔
      (MulAction.orbit M x.1).Nonempty ∧ (MulAction.orbit M x.2).Nonempty := by
  -- Construct the equivalence by proving both directions.
  constructor <;> simp [MulAction.orbit_nonempty]
  <;> aesop
  <;> aesop