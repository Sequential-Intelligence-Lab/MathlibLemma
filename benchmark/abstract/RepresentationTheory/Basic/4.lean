import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 5. If the representation is trivial, every vector is fixed
lemma Representation.isTrivial_fix
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] (ρ : Representation k G V)
    [Representation.IsTrivial ρ] (g : G) (v : V) :
    ρ g v = v := by
  sorry