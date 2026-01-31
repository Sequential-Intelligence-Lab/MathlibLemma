import Mathlib

lemma LinearMap.trace_directSum
    {R : Type*} [CommRing R]
    {ι : Type*} [Fintype ι]
    {M : ι → Type*} [∀ i, AddCommGroup (M i)] [∀ i, Module R (M i)]
    [∀ i, Module.Free R (M i)] [∀ i, Module.Finite R (M i)]
    (F : DirectSum ι M →ₗ[R] DirectSum ι M)
    (f : ∀ i, M i →ₗ[R] M i) :
    LinearMap.trace R (DirectSum ι M) F =
      ∑ i, LinearMap.trace R (M i) (f i) := by
  sorry