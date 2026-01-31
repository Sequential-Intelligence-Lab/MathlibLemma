import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_filter_right {α β} (q : β → Prop) [DecidablePred q]
    (s : Finset α) (t : Finset β)
    [DecidablePred fun x : Sum α β => Sum.rec (fun _ => True) q x] :
    s.disjSum (t.filter q) = (s.disjSum t).filter (Sum.rec (fun _ => True) q) := by
  ext x
  simp only [Finset.mem_disjSum, Finset.mem_filter, Finset.mem_disjSum, Finset.mem_filter]
  constructor <;> intro h <;> cases x <;> simp_all
  <;> try
    aesop
  <;> try
    tauto