import Mathlib

lemma LinearMap.trace_conj'_id
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M ((LinearEquiv.refl R M).conj f) = LinearMap.trace R M f := by
  sorry
