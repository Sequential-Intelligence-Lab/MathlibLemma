import Mathlib

/-
Lemma ideas revolve around:

* `GroupAlgebra.average`: its algebraic properties, interaction with representations,
  tensor products, duals, subrepresentations, quotients.
* `Representation.invariants`: lattice properties, functoriality, compatibility with
  direct sums, tensor products, duals, restriction/induction, quotient representations,
  and categorical properties in `Rep` and `FDRep`.
* `linHom.invariantsEquivRepHom`: naturality, behavior under composition, etc.
* Interaction with other Mathlib structures: `LinearEquiv`, `Submodule`, `Subrepresentation`,
  categorical functors, adjunction properties, traces, characters (where available), etc.

All lemmas below are just statements with `sorry`. They are intended to be nontrivial
(i.e. not immediate from simp-like automation).
-/

universe u w

variable {k : Type u} {G : Type u} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommRing k] [Group G] [Fintype G] [Invertible (Fintype.card G : k)]

open MonoidAlgebra GroupAlgebra

lemma Rep.quotientToInvariantsFunctor_additive
    (S : Subgroup G) [S.Normal] :
    (Rep.quotientToInvariantsFunctor (k := k) (G := G) S).Additive := by
  classical
  -- `Functor.Additive` is a structure with a `map_add` field.
  -- We prove that `map` of the functor is additive on morphisms
  -- by reducing to the underlying linear maps, where the construction
  -- is linear and hence additive.
  refine ⟨?_⟩
  intro X Y f g
  -- Morphisms in `Rep` are linear maps between the underlying modules.
  -- We can use `ext` to reduce the equality of morphisms to the equality
  -- of their underlying linear maps on each vector.
  ext v
  -- Now use the API for `quotientToInvariantsFunctor` on morphisms.
  -- Its action on morphisms is defined via a linear construction,
  -- so it is additive in `f`.
  simp

end Average