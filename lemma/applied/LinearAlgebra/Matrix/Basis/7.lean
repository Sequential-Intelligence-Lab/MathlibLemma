import Mathlib

open scoped BigOperators

namespace Module

variable {ι : Type*} {R M : Type*} [DecidableEq ι]
  [CommSemiring R] [AddCommMonoid M] [Module R M] [Fintype ι]

lemma Basis.toMatrix_surjective_family
  (e : Basis ι R M) :
  Function.Surjective
    (e.toMatrix : (ι → M) → Matrix ι ι R) := by
  classical
  intro A
  -- Define the preimage family whose j-th element has coordinates given by the j-th column of A.
  refine ⟨(fun j => e.repr.symm (Finsupp.equivFunOnFinite.symm (fun i => A i j))), ?_⟩
  ext i j
  -- Use the definition of `toMatrix` and the equivalence between finsupp and functions.
  simp [Basis.toMatrix]

end Module