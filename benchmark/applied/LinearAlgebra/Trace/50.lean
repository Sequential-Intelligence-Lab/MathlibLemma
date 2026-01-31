import Mathlib

lemma LinearMap.trace_smul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (r : R) (f : M →ₗ[R] M) :
    LinearMap.trace R M (r • f) =
      r * LinearMap.trace R M f := by
  sorry
