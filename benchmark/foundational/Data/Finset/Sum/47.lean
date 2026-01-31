import Mathlib

lemma toLeft_bind {α β γ} [DecidableEq γ]
    (u : Finset (α ⊕ β)) (f : α → Finset γ) :
    (Finset.toLeft u).biUnion f =
      u.biUnion (fun x =>
        match x with
        | Sum.inl a => f a
        | Sum.inr _ => ∅) := by
  sorry