import Mathlib

noncomputable abbrev eigenvalueSum
    {R : Type*} [Field R]
    {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
    (f : M →ₗ[R] M) : R := 0

lemma LinearMap.trace_eq_sum_eigenvalues
    {R : Type*} [Field R] [IsAlgClosed R] [CharZero R]
    {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M f = eigenvalueSum f := by
  sorry