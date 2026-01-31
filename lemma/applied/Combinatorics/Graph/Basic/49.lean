import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.mem_incidenceSet_iff {G : Graph α β} {x : α} {e : β} :
    e ∈ G.incidenceSet x ↔ G.Inc e x := by
  constructor
  -- Forward direction: If `e` is in `G.incidenceSet x`, then `G.Inc e x` holds.
  intro h
  -- By definition of `incidenceSet`, `h` implies `G.Inc e x`.
  simp_all [Graph.incidenceSet]
  -- Reverse direction: If `G.Inc e x` holds, then `e` is in `G.incidenceSet x`.
  intro h
  -- By definition of `Inc`, `h` implies `e` is in `G.incidenceSet x`.
  simp_all [Graph.incidenceSet]
  <;> aesop