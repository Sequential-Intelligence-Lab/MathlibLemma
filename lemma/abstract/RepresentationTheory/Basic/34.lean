import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 35. Compatibility of `asGroupHom` with group inverse
lemma Representation.asGroupHom_inv
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (g : G) :
    ρ.asGroupHom g⁻¹ = (ρ.asGroupHom g)⁻¹ := by
  -- `asGroupHom` is a group homomorphism, so it respects inverses.
  simpa using (ρ.asGroupHom.map_inv g)