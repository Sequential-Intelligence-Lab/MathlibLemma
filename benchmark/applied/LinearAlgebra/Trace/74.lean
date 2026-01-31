import Mathlib

open scoped BigOperators

lemma LinearMap.trace_id_smul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M] :
    LinearMap.trace R M (LinearMap.id : M →ₗ[R] M) =
      (Nat.cast (Module.finrank R M) : R) := by
  sorry