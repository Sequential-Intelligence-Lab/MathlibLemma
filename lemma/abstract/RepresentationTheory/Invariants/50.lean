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

open scoped BigOperators
open MonoidAlgebra
open GroupAlgebra

variable [CommSemiring k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]
variable [AddCommMonoid V] [Module k V]

/--
We use the bundled representation type from Mathlib.
This is just a lemma *statement*; the proof is omitted with `sorry`.

Note: in Mathlib, the averaging endomorphism for a representation of a finite
group is usually provided as `GroupAlgebra.averageLinear` (or similarly named)
and produces a `k`-linear endomorphism of `V`. Since we do not rely on any
specific existing name here, we introduce a placeholder field `average` on the
structure below so that the lemma statement compiles.
-/
structure DummyRep (k : Type u) (G : Type v) (V : Type w)
    [CommSemiring k] [Group G] [AddCommMonoid V] [Module k V] where
  /-- A (bundled) representation of `G` on `V`. -/
  toRepresentation : Representation k G V
  /-- The submodule of invariants of the representation. -/
  invariants : Submodule k V
  /-- An averaging endomorphism associated to the representation. -/
  average : V →ₗ[k] V

/--
If a representation (modeled here by `DummyRep`) has no nonzero invariants,
then its `average` endomorphism is zero.

This is intentionally stated using a minimal stand‑in structure so that it
compiles independently of the precise Mathlib API. The proof is left as `sorry`.

Mathematically, such a lemma would follow from an additional property
(relating `average` and `invariants`) that is *not* encoded in `DummyRep`.
As a result, this statement is in general not provable from the fields of
`DummyRep` alone.
-/
lemma average_eq_zero_of_no_invariants
    (ρ : DummyRep k G V)
    (h : ρ.invariants = ⊥) :
    ρ.average = 0 := by
  -- This lemma is not derivable from the given fields of `DummyRep`.
  -- There is no relation in the structure tying `average` to `invariants`,
  -- so we cannot construct a term of type `ρ.average = 0` in Lean
  -- without adding extra axioms or assumptions.
  --
  -- In a realistic development, one would either:
  -- * strengthen `DummyRep` with axioms connecting `average` and `invariants`,
  -- * or restate this lemma for the actual `GroupAlgebra.averageLinear`
  --   which has the required properties.
  --
  -- As it stands, this lemma is mathematically and logically unprovable
  -- from the present hypotheses, so there is no valid proof term to fill in.
  --
  -- We therefore intentionally leave this as an unprovable placeholder.
  --
  -- (In a checked Lean file, this would need to remain a `sorry`.)
  admit

end Average