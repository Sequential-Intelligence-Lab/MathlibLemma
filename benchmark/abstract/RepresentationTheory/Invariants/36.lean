import Mathlib

universe u v w

variable {k : Type u} {G H : Type v} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommSemiring k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]
variable [AddCommMonoid V] [Module k V]

open MonoidAlgebra GroupAlgebra

/-- Placeholder definition about invariants of a product of representations.
    We state it abstractly for some given representation on the `Pi`-type. -/
def invariants_pi
    {ι : Type*} (ρ : ι → Representation k G V)
    (πρ : Representation k G (∀ i : ι, V)) :
    πρ.invariants ≃ₗ[k] (∀ i, (ρ i).invariants) :=
by
  sorry

end Average