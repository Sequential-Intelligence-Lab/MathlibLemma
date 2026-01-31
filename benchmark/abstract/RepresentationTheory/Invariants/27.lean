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

open MonoidAlgebra GroupAlgebra Representation

/--
If a vector is invariant under two representations `ρ₁` and `ρ₂` on the same space,
then it is invariant under any representation `ρ₁₂` that is thought of as a
(composite-type) action of `G` built from `ρ₁` and `ρ₂`.

This is just a placeholder statement; it is not proved here.
-/
lemma invariants_inter
    (ρ₁ : Representation k G V)
    (ρ₂ : Representation k G V)
    (ρ₁₂ : Representation k G V) :
    (ρ₁.invariants ⊓ ρ₂.invariants : Submodule k V) ≤ ρ₁₂.invariants := by
  sorry

end Average

/-! ## Functoriality and maps between invariants -/

section InvariantsMaps

variable [CommRing k] [Group G]
variable [AddCommGroup V] [AddCommGroup W] [AddCommGroup X]
variable [Module k V] [Module k W] [Module k X]

open Representation

variable (ρV : Representation k G V)
variable (ρW : Representation k G W)
variable (ρX : Representation k G X)

/-!
  Lemmas about maps between invariants, naturality, etc., can be added here.
  For now we only declare variables and leave actual statements for later.
-/

end InvariantsMaps