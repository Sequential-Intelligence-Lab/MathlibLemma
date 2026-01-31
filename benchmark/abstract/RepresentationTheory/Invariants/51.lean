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
variable [AddCommGroup V] [Module k V]

open MonoidAlgebra GroupAlgebra

variable (ρ : Representation k G V)

/-- A typical nontrivial property one might want of `averageMap`:
it behaves like a projection, hence is idempotent. -/
lemma averageMap_comp_averageMap :
    ρ.averageMap.comp ρ.averageMap = ρ.averageMap := by
  sorry

end Average

/-! ## Subgroup and quotient invariants -/

section SubgroupQuotient

variable [CommRing k] [Group G]
variable [AddCommGroup V] [Module k V]
variable (ρ : Representation k G V)

open Representation

variable (S : Subgroup G) [S.Normal]

-- more lemmas about subgroup/quotient invariants can go here

end SubgroupQuotient