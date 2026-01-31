import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 68. If `ρ` is faithful then `asAlgebraHom` is injective on `of k G g`
lemma Representation.asAlgebraHom_of_injective
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (hρ : Function.Injective fun g : G => ρ g) :
    Function.Injective fun g : G => ρ.asAlgebraHom (MonoidAlgebra.of k G g) := by
  sorry
