import Mathlib

lemma toRight_fold_add {α β} [DecidableEq (α ⊕ β)]
    [AddCommMonoid β] (u : Finset (α ⊕ β)) :
    (u.toRight).sum (fun b => b) =
      u.sum (fun x => match x with | .inl _ => 0 | .inr b => b) := by
  sorry
