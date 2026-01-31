import Mathlib

lemma disjSum_fold_add {α β γ}
    [Zero γ] [Add γ] [AddCommSemigroup γ]
    [Std.Commutative fun x y : γ => x + y]
    [Std.Associative fun x y : γ => x + y]
    [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t : Finset β) (f : α → γ) (g : β → γ) :
    (s.disjSum t).fold (fun x y => x + y) 0
      (fun x =>
        match x with
        | Sum.inl a => f a
        | Sum.inr b => g b) =
      s.fold (fun x y => x + y) 0 f +
      t.fold (fun x y => x + y) 0 g := by
  sorry