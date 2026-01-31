import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 2. A representation is trivial iff it factors through `PUnit`
lemma Representation.isTrivial_iff_mkSubsingleton
    (k G V : Type*) [CommSemiring k] [Monoid G] [Subsingleton G]
    [AddCommMonoid V] [Module k V] (ρ : Representation k G V) :
    ρ.IsTrivial := by
  sorry