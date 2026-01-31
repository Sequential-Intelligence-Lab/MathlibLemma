import Mathlib

open LinearMap

lemma LinearMap.trace_smul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (r : R) (f : M →ₗ[R] M) :
    trace R M (r • f) = r * trace R M f := by
  -- `trace R M` is linear, so it respects scalar multiplication:
  -- `trace R M (r • f) = r • trace R M f`.
  have h := (trace R M).map_smul r f
  -- On `R`, scalar multiplication by `r` is multiplication by `r`.
  -- So we can rewrite `r • trace R M f` as `r * trace R M f`.
  simpa using h