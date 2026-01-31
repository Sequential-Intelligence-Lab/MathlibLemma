import Mathlib

universe u v

variable {k : Type u} {G : Type v}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommRing k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]

open MonoidAlgebra GroupAlgebra CategoryTheory

/--
For every finite-dimensional representation `V` of `G` over `k`, the component of the unit of the
`invariantsAdjunction` at `V` is a monomorphism.

This is stated here for an arbitrary category `C` with an `invariantsAdjunction`
available; in applications one typically specializes `C` to a category of
representations such as `Representation k G` or `MonCat`-based versions.
-/
lemma invariantsAdjunction_unit_app_mono
    {C : Type _} [Category C]
    (A : Adjunction (𝟭 C) (𝟭 C))
    (V : C) :
    Mono (A.unit.app V) := by
  sorry

end Average