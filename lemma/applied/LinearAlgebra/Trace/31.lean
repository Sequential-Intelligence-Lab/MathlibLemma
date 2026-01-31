import Mathlib

lemma LinearMap.trace_add_id_mul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M (LinearMap.id + f) =
      (Nat.cast (Module.finrank R M) : R) + LinearMap.trace R M f := by
  -- Use linearity of the trace with respect to addition
  have h := (LinearMap.trace R M).map_add (LinearMap.id : M →ₗ[R] M) f
  -- Rewrite the trace of the identity and finish
  simpa [LinearMap.trace_id] using h