import Mathlib

lemma disjSum_filter_left_eq {α β} (p : α → Prop) [DecidablePred p]
    (s : Finset α) (t : Finset β)
    [DecidablePred fun x : Sum α β =>
      match x with
      | Sum.inl a => p a
      | Sum.inr _ => True] :
    (s.filter p).disjSum t =
      (s.disjSum t).filter
        (fun x => match x with
          | Sum.inl a => p a
          | Sum.inr _ => True) := by
  sorry