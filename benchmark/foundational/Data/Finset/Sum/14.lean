import Mathlib

lemma disjSum_filter_left {α β} (p : α → Prop) [DecidablePred p]
    (s : Finset α) (t : Finset β)
    [DecidablePred (fun t : Sum α β => Sum.rec p (fun _ => True) t)] :
    (s.filter p).disjSum t = (s.disjSum t).filter (Sum.rec p (fun _ => True)) := by
  sorry