import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

open Representation

-- 1. Relating trivial representations and `IsTrivial` predicate
lemma Representation.isTrivial_iff
    (k G V : Type*)
    [CommSemiring k] [Monoid G] [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    Representation.IsTrivial ρ ↔ ∀ g : G, ρ g = LinearMap.id := by
  sorry