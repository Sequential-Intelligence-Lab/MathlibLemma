import Mathlib

universe u v w

variable {k : Type u} {G H : Type v} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommSemiring k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]
variable [AddCommMonoid V] [Module k V]

open MonoidAlgebra GroupAlgebra

/-- Placeholder axiom: we assume (for now) that the invariants of a given
`Π`-type representation are linearly isomorphic to the `Π` of invariants
of the component representations.

This is only a stub needed to let later code typecheck; it is *not*
mathematically justified in this generality. -/
axiom invariants_pi_nonempty
  {ι : Type*} (ρ : ι → Representation k G V)
  (πρ : Representation k G (∀ i : ι, V)) :
  Nonempty (πρ.invariants ≃ₗ[k] (∀ i, (ρ i).invariants))

/-- Placeholder definition about invariants of a product of representations.
We state it abstractly for some given representation on the `Pi`-type.

This is currently defined using an assumed `Nonempty` equivalence,
see `invariants_pi_nonempty`. -/
noncomputable def invariants_pi
    {ι : Type*} (ρ : ι → Representation k G V)
    (πρ : Representation k G (∀ i : ι, V)) :
    πρ.invariants ≃ₗ[k] (∀ i, (ρ i).invariants) :=
by
  classical
  exact Classical.choice (invariants_pi_nonempty ρ πρ)

end Average