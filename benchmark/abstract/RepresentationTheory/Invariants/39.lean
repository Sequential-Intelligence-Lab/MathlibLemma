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

variable [CommSemiring k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]

open MonoidAlgebra
open GroupAlgebra
open scoped DirectSum

/-
We index a family of representations on a family of modules `V : ι → Type*`,
so that `Representation.directSum` is well-typed.
-/
variable {ι : Type*} (V : ι → Type*)
variable [DecidableEq ι] [Fintype ι]
variable [∀ i, AddCommMonoid (V i)] [∀ i, Module k (V i)]

/-- Placeholder: invariants of a direct sum of representations. -/
def invariants_directSum
    (ρi : ∀ i, Representation k G (V i)) :
    (Representation.directSum ρi).invariants ≃ₗ[k]
      (⨁ i, (ρi i).invariants) := by
  sorry

end Average

/-! ## Invariants and duals -/

section InvariantsDual

variable [CommRing k] [Group G]
variable [AddCommGroup V] [Module k V]

variable (ρ : Representation k G V)

/-- Placeholder lemma about invariants and duals; statement only, with `sorry`. -/
lemma invariants_dual_related :
    True := by
  trivial

end InvariantsDual