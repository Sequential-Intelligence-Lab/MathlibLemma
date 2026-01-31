import Mathlib

lemma LinearMap.trace_ofLinearEquiv_eq
    {R : Type*} [CommSemiring R]
    {M N : Type*} [AddCommMonoid M] [AddCommMonoid N]
    [Module R M] [Module R N]
    (e : M ≃ₗ[R] N) (f : M →ₗ[R] M) :
    LinearMap.trace R N (e.conj f) = LinearMap.trace R M f := by
  sorry
