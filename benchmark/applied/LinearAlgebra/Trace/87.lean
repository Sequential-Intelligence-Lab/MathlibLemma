import Mathlib

lemma LinearMap.trace_trivialModule
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Subsingleton M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M f = 0 := by
  sorry
