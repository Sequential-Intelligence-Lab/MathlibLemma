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
variable [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]
variable [AddCommMonoid V] [Module k V]

open MonoidAlgebra GroupAlgebra

/-- Invariants of the action of `G` given by a monoid homomorphism
`ρ : G →* V →ₗ[k] V`. -/
def invariants (ρ : G →* V →ₗ[k] V) : Submodule k V :=
  { carrier := { v : V | ∀ g : G, ρ g v = v },
    zero_mem' := by
      intro g
      simpa using (LinearMap.map_zero (ρ g)),
    add_mem' := by
      intro v w hv hw g
      simp [hv g, hw g],
    smul_mem' := by
      intro a v hv g
      simp [hv g] }

/-- Invariants for the restriction of the action `ρ` to a subgroup `H ≤ G`. -/
def subgroupInvariants (ρ : G →* V →ₗ[k] V) (H : Subgroup G) : Submodule k V :=
  { carrier := { v : V | ∀ g : H, ρ g v = v },
    zero_mem' := by
      intro g
      simpa using (LinearMap.map_zero (ρ g)),
    add_mem' := by
      intro v w hv hw g
      simp [hv g, hw g],
    smul_mem' := by
      intro a v hv g
      simp [hv g] }

/-- Invariants under `G` are contained in invariants under any subgroup `H`. -/
lemma invariants_le_subgroupInvariants (ρ : G →* V →ₗ[k] V) (H : Subgroup G) :
    invariants (V := V) ρ ≤ subgroupInvariants (V := V) ρ H := by
  intro v hv
  -- Expand membership conditions in the two submodules
  change (∀ g : G, ρ g v = v) at hv
  change (∀ g : H, ρ g v = v)
  intro g
  -- Use the fact that `g : H` coerces to an element of `G`
  simpa using hv (g : G)

end Average