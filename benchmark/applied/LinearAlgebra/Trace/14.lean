import Mathlib

lemma LinearMap.trace_comp_eq_trace_comp_symm
    {R : Type*} [CommSemiring R]
    {M N : Type*} [AddCommMonoid M] [AddCommMonoid N]
    [Module R M] [Module R N]
    (f : M →ₗ[R] N) (g : N →ₗ[R] M)
    [Module.Free R M] [Module.Free R N] [Module.Finite R M] [Module.Finite R N] :
    LinearMap.trace R M (g ∘ₗ f) = LinearMap.trace R N (f ∘ₗ g) := by
  sorry
