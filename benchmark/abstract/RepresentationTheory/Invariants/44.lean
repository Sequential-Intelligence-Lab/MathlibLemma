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
variable [AddCommMonoid V] [Module k V]

open MonoidAlgebra GroupAlgebra

-- We assume a representation ρ of G on V over k
variable (ρ : Representation k G V)

/--
We introduce `averageLinear` as a placeholder averaging endomorphism associated to
a representation, so that later lemma statements typecheck. It is deliberately given
the trivial definition `0`; the actual definition is not needed here.
-/
noncomputable def Representation.averageLinear
    (ρ : Representation k G V) : V →ₗ[k] V :=
  0

/-- The range of `averageLinear` coincides with the submodule of invariants. -/
lemma averageLinear_range_eq_invariants :
    LinearMap.range (Representation.averageLinear ρ) = ρ.invariants := by
  sorry

end Average