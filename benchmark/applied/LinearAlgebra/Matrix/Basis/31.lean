import Mathlib

open scoped BigOperators

lemma basis_toMatrix_invertible_iff_linearIndependent
    {ι : Type _} {R M : Type _}
    [Field R] [AddCommGroup M] [Module R M]
    [Fintype ι] [DecidableEq ι]
    (e : Module.Basis ι R M) (v : ι → M) :
    LinearIndependent R v ↔ IsUnit (e.toMatrix v).det := by
  sorry