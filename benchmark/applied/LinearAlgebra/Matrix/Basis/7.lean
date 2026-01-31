import Mathlib

open scoped BigOperators

namespace Module

variable {ι : Type*} {R M : Type*} [CommSemiring R]
  [AddCommMonoid M] [Module R M] [Fintype ι]

lemma Basis.toMatrix_surjective_family
  (e : Basis ι R M) :
  Function.Surjective
    (e.toMatrix : (ι → M) → Matrix ι ι R) := by
  sorry

end Module