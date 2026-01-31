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
  -- Define the predicate on `Sum α β` explicitly
  let P : Sum α β → Prop :=
    fun x => match x with
      | Sum.inl a => p a
      | Sum.inr _ => True
  -- Prove equality by extensionality on membership
  apply Finset.ext
  intro x
  -- Case analyze on `x`
  cases x with
  | inl a =>
      -- For `Sum.inl a`
      simp [P, Finset.mem_disjSum, Finset.mem_filter]
  | inr b =>
      -- For `Sum.inr b`
      simp [P, Finset.mem_disjSum, Finset.mem_filter]