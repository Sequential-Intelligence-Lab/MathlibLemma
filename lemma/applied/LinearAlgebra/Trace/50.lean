import Mathlib

lemma LinearMap.trace_smul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (r : R) (f : M →ₗ[R] M) :
    LinearMap.trace R M (r • f) =
      r * LinearMap.trace R M f := by
  -- `trace R M` is linear, so it respects scalar multiplication.
  -- On `R`, scalar multiplication is just multiplication.
  simpa using (LinearMap.map_smulₛₗ (LinearMap.trace R M) r f)