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
variable [AddCommMonoid V] [Module k V]

open MonoidAlgebra GroupAlgebra

lemma invariants_mono
    {ρ₁ ρ₂ : Representation k G V}
    (h : ∀ g v, ρ₂ g v = ρ₁ g v) :
    ρ₂.invariants ≤ ρ₁.invariants := by
  intro v hv
  -- Unfold membership in invariants for ρ₂
  change (∀ g, ρ₂ g v = v) at hv
  -- We want the corresponding property for ρ₁
  change (∀ g, ρ₁ g v = v)
  intro g
  specialize hv g
  -- Rewrite using the pointwise equality of the actions
  simpa [h g v] using hv

end Average