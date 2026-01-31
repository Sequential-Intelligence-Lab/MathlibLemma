import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_filter_left {α β} (p : α → Prop) [DecidablePred p]
    (s : Finset α) (t : Finset β)
    [DecidablePred (fun t : Sum α β => Sum.rec p (fun _ => True) t)] :
    (s.filter p).disjSum t = (s.disjSum t).filter (Sum.rec p (fun _ => True)) := by
  ext x
  constructor <;> simp (config := { contextual := true }) [Finset.mem_disjSum, Finset.mem_filter]
  <;> rcases x with (x | x) <;> simp_all
  <;> tauto