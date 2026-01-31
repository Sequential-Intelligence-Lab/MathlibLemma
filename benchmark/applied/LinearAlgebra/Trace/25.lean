import Mathlib

lemma LinearMap.trace_comp_eq_zero_of_image_le_ker
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M]
    (f g : M →ₗ[R] M) (h : LinearMap.range f ≤ LinearMap.ker g)
    [Module.Free R M] [Module.Finite R M] :
    LinearMap.trace R M (g ∘ₗ f) = 0 := by
  sorry