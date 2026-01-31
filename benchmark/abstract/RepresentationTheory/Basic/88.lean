import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 89. Representation.isTrivial if image in scalars is trivial
lemma Representation.isTrivial_of_smul_eq
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (h : ∀ g v, ρ g v = v) :
    Representation.IsTrivial ρ := by
  sorry