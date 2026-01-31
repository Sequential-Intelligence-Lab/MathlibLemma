import Mathlib

lemma toLeft_fold_add {α β} [DecidableEq (α ⊕ β)]
    [AddCommMonoid α] (u : Finset (α ⊕ β)) :
    (u.toLeft).sum (fun a => a) =
      u.sum (fun x => match x with | .inl a => a | .inr _ => 0) := by
  sorry
