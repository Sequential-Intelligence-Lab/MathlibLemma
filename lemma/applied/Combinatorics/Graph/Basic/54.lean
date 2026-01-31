import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.loopSet_eq_empty_iff {G : Graph α β} (x : α) :
    G.loopSet x = (∅ : Set β) ↔
      ∀ e, ¬ G.IsLoopAt e x := by
  -- Construct the equivalence by proving both directions.
  constructor <;> simp_all [Set.eq_empty_iff_forall_not_mem]
  -- First direction: If loopSet x is empty, then there are no loops at x.
  <;> exact fun e he => he e
  -- Second direction: If there are no loops at x, then loopSet x is empty.
  <;> exact fun e he => he e