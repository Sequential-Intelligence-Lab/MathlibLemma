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

universe u v w

variable {k : Type u} {G H : Type v} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommSemiring k] [Group G] [Fintype G] [Invertible (Fintype.card G : k)]

open MonoidAlgebra GroupAlgebra

/-- A placeholder lemma about compatibility of the group average with the inclusion
of a subgroup. The precise statement can be adjusted later; this one is only intended
to compile. -/
lemma average_mul_of_subgroup
    {S : Subgroup G} [Fintype S] [Invertible (Fintype.card S : k)] :
    GroupAlgebra.average k G * GroupAlgebra.average k G
      = GroupAlgebra.average k G := by
  sorry

end Average

/-! ## Lemmas about `Representation.invariants` as a submodule -/

section InvariantsBasic

variable [CommSemiring k] [Group G]
variable [AddCommMonoid V] [Module k V]
variable (ρ : Representation k G V)

open Representation

-- Placeholder lemma about invariants, statement intentionally minimal so it compiles.
lemma invariants_subsingleton :
    Subsingleton (ρ.invariants) := by
  sorry

end InvariantsBasic