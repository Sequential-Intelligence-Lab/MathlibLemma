import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.incidenceSet_mono_of_vertexSubset {G : Graph α β}
    {x y : α} (hxy : x = y) :
    G.incidenceSet x ⊆ G.incidenceSet y := by
  -- Simplify the goal using the fact that x = y, which means the incidence sets of x and y are the same.
  simp_all [SetLike.le_def]
  -- Since x = y, the incidence set of x is the same as the incidence set of y, hence the subset relation holds.
  <;> simp_all
  -- The proof is complete as we have shown that the incidence set of x is a subset of the incidence set of y.
  <;> simp_all