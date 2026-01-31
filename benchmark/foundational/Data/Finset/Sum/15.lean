import Mathlib

lemma disjSum_filter_right {α β} (q : β → Prop) [DecidablePred q]
    (s : Finset α) (t : Finset β)
    [DecidablePred fun x : Sum α β => Sum.rec (fun _ => True) q x] :
    s.disjSum (t.filter q) = (s.disjSum t).filter (Sum.rec (fun _ => True) q) := by
  sorry