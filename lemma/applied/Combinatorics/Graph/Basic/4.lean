import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.IsLoopAt_iff_isLink_eq {G : Graph α β} :
    G.IsLoopAt e x ↔ G.IsLink e x x := by
  have h_main : G.IsLoopAt e x ↔ G.IsLink e x x := by
    constructor <;> intro h <;>
    (try cases h <;> simp_all [Graph.IsLoopAt, Graph.IsLink]) <;>
    (try tauto) <;>
    (try aesop)
    <;>
    (try
      {
        simp_all [Graph.IsLoopAt, Graph.IsLink]
        <;>
        tauto
      })
  exact h_main