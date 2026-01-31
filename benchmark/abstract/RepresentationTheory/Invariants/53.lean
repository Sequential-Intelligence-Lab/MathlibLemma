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

variable [CommSemiring k]
variable [Group G] [Fintype G] [Invertible (Fintype.card G : k)]

-- basic structure for a representation space
variable [AddCommMonoid V] [Module k V]

open MonoidAlgebra GroupAlgebra

/--
If a representation `ρ` of `G` factors through the quotient `G ⧸ S` and coincides
pointwise with a representation `ρq` of `G ⧸ S`, then their invariant submodules
coincide.
-/
lemma invariants_of_quotient_eq
    (S : Subgroup G)
    [Group (G ⧸ S)]
    (ρ : Representation k G V)
    (ρq : Representation k (G ⧸ S) V)
    (hρ : ∀ (g : G) (v : V), ρ g v = ρq ⟦g⟧ v) :
    ρ.invariants = ρq.invariants := by
  sorry

end Average