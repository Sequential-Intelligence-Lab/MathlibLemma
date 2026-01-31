import Mathlib

lemma LinearMap.trace_eq_zero_of_subsingleton
    {R M : Type*} [CommSemiring R] [Subsingleton M] [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M f = 0 := by
  classical
  -- In a subsingleton module, every linear map is equal to `0`.
  have hf : f = 0 := Subsingleton.elim _ _
  -- Then the trace is the trace of `0`, which is `0` by linearity.
  simpa [hf]