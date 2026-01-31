import Mathlib

open LinearMap

lemma LinearMap.trace_smul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (r : R) (f : M →ₗ[R] M) :
    trace R M (r • f) = r * trace R M f := by
  sorry