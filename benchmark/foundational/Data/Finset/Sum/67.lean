import Mathlib

lemma disjSum_filter_right_eq {α β} (q : β → Prop) [DecidablePred q]
    (s : Finset α) (t : Finset β)
    [DecidablePred (fun x : Sum α β =>
      match x with
      | Sum.inl _ => True
      | Sum.inr b => q b)] :
    s.disjSum (t.filter q) =
      (s.disjSum t).filter
        (fun x => match x with
          | Sum.inl _ => True
          | Sum.inr b => q b) := by
  sorry