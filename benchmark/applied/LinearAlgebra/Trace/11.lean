import Mathlib

lemma LinearMap.trace_eq_zero_of_nilpotent
    {R : Type*} [CommSemiring R] [IsDomain R]
    {M : Type*} [AddCommGroup M] [Module R M]
    [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) (h : IsNilpotent f) :
    LinearMap.trace R M f = 0 := by
  sorry