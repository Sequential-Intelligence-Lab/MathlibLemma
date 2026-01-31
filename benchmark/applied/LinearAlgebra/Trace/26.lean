import Mathlib

lemma LinearMap.trace_add_comp_self
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f g : M →ₗ[R] M) :
    LinearMap.trace R M ((f + g) ∘ₗ (f + g)) =
      LinearMap.trace R M (f ∘ₗ f) +
        2 * LinearMap.trace R M (f ∘ₗ g) +
        LinearMap.trace R M (g ∘ₗ g) := by
  sorry
