import Mathlib

namespace LinearMap

lemma trace_eq_zero_of_isEmpty_index
    {R : Type*} [CommSemiring R]
    {ι : Type*} [IsEmpty ι] {M : Type*} [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M f = 0 := by
  sorry

end LinearMap