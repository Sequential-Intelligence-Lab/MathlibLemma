import Mathlib


/-
The definitions below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 7. Composition with a monoid hom from `G'` to `G`
def Representation.comp_monoidHom
    {k G G' V : Type*} [CommSemiring k] [Monoid G] [Monoid G']
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (φ : G' →* G) :
    Representation k G' V := by
  sorry