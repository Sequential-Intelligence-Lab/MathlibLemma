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
  -- Prove equality by extensionality on membership
  apply Finset.ext
  intro x
  -- Case split on `x : α ⊕ β`
  cases x with
  | inl a =>
      -- For `x = Sum.inl a`
      -- `simp` both sides down to `Sum.inl a ∈ u`
      simp [Finset.mem_filter,
            Finset.mem_map,
            Finset.mem_toLeft]
  | inr b =>
      -- For `x = Sum.inr b`
      -- `simp` both sides down to `False`
      simp [Finset.mem_filter,
            Finset.mem_map,
            Finset.mem_toLeft]

end Scratch