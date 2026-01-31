import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.loopSet_nonempty_iff {G : Graph α β} (x : α) :
    (G.loopSet x).Nonempty ↔ ∃ e, G.IsLoopAt e x := by
  constructor <;> simp [Set.Nonempty]
  <;> aesop
  <;> aesop