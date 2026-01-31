import Mathlib

open scoped BigOperators

lemma LinearMap.trace_smul_id
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (r : R) :
    LinearMap.trace R M (r • (LinearMap.id : M →ₗ[R] M)) =
      (algebraMap ℕ R (Module.finrank R M)) * r := by
  sorry