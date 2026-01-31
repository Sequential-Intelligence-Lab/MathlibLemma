import Mathlib

lemma LinearMap.trace_id_sub
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M (LinearMap.id - f) =
      (algebraMap ℕ R (Module.finrank R M)) - LinearMap.trace R M f := by
  -- Use linearity of trace and the known value on `id`
  calc
    LinearMap.trace R M (LinearMap.id - f)
        = LinearMap.trace R M (LinearMap.id + (-f)) := by
          simpa [sub_eq_add_neg]
    _ = LinearMap.trace R M (LinearMap.id) + LinearMap.trace R M (-f) := by
          simpa using (LinearMap.trace R M).map_add (LinearMap.id : M →ₗ[R] M) (-f)
    _ = LinearMap.trace R M (LinearMap.id) + (- LinearMap.trace R M f) := by
          simpa using (LinearMap.trace R M).map_neg f
    _ = (algebraMap ℕ R (Module.finrank R M)) + (- LinearMap.trace R M f) := by
          simpa [LinearMap.trace_id]
    _ = (algebraMap ℕ R (Module.finrank R M)) - LinearMap.trace R M f := by
          simpa [sub_eq_add_neg]