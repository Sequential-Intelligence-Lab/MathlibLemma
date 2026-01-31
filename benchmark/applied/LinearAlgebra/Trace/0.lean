import Mathlib

@[simp]
lemma LinearMap.trace_zero_of_subsingleton
    {R M : Type*} [CommSemiring R] [Subsingleton M] [AddCommMonoid M] [Module R M] :
    LinearMap.trace R M 0 = 0 := by
  sorry
