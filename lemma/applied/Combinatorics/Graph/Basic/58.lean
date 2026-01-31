import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.loopSet_eq_empty_of_no_loops {G : Graph α β} (x : α)
    (h : ∀ e, ¬ G.IsLoopAt e x) :
    G.loopSet x = (∅ : Set β) := by
  -- Use the set emptiness criterion: if no elements satisfy the membership condition, the set is empty.
  rw [Set.eq_empty_iff_forall_notMem]
  -- Introduce an arbitrary edge e and use the hypothesis h to show it is not in G.loopSet x.
  intro e
  -- Simplify the membership condition to show that e is not a loop at x.
  simp [Set.mem_setOf_eq]
  -- Apply the hypothesis h to conclude that e is not a loop at x.
  exact h e