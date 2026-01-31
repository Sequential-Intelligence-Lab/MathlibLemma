import Mathlib

lemma LinearMap.trace_sum
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    {ι : Type*} [Fintype ι]
    (f : ι → M →ₗ[R] M) :
    LinearMap.trace R M (∑ i, f i) =
      ∑ i, LinearMap.trace R M (f i) := by
  -- `LinearMap.trace R M` is a linear map `(M →ₗ[R] M) →ₗ[R] R`,
  -- so it preserves finite sums.
  simpa using (LinearMap.map_sum (LinearMap.trace R M) f)