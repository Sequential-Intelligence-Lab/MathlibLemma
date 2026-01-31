import Mathlib

lemma LinearMap.trace_eq_zero_of_subsingleton
    {R M : Type*} [CommSemiring R] [Subsingleton M] [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M f = 0 := by
  sorry
