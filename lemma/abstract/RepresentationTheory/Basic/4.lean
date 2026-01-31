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
  -- In a trivial representation, every group element acts as the identity.
  -- The `Representation.IsTrivial` typeclass provides `simp` lemmas that
  -- rewrite `ρ g` to `1`, and `1 v` to `v`.
  simpa