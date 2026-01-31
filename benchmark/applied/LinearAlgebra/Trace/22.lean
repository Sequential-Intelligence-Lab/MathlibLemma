import Mathlib

lemma LinearMap.trace_comp_eq_trace_comp_mul
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    [Module.Free R M] [Module.Finite R M]
    (f g : M →ₗ[R] M) :
    LinearMap.trace R M (f ∘ₗ g) =
      LinearMap.trace R M (g ∘ₗ f) := by
  sorry
