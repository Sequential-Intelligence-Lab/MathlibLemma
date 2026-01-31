import Mathlib

lemma LinearMap.trace_trivialModule
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Subsingleton M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M f = 0 := by
  -- In a subsingleton module, all linear maps are equal, hence `f = 0`.
  have hf : f = 0 := Subsingleton.elim _ _
  -- The trace of the zero map is zero; rewrite using `hf`.
  simpa [hf]