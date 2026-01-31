import Mathlib

lemma LinearMap.trace_id_sub
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M (LinearMap.id - f) =
      (algebraMap ℕ R (Module.finrank R M)) - LinearMap.trace R M f := by
  sorry