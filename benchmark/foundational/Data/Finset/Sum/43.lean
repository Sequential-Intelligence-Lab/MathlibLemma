import Mathlib

namespace Scratch

variable {α β : Type _}

-- Provide a decidable instance for the predicate used in `filter`
instance instDecidablePredSumInl :
    DecidablePred
      (fun x : α ⊕ β =>
        match x with
        | Sum.inl _ => True
        | Sum.inr _ => False) :=
by
  intro x
  cases x with
  | inl _ =>
      -- need `Decidable True`
      exact isTrue trivial
  | inr _ =>
      -- need `Decidable False`
      exact isFalse (by intro h; cases h)

lemma toLeft_filter_inl (u : Finset (α ⊕ β)) :
    u.filter
        (fun x =>
          match x with
          | Sum.inl _ => True
          | Sum.inr _ => False) =
      u.toLeft.map
        { toFun := Sum.inl
          inj' := by intro a b h; cases h; rfl } := by
  sorry

end Scratch