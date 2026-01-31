import Mathlib

lemma LinearMap.trace_eq_trace_of_eq_on_submodule_top
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M]
    (f g : M →ₗ[R] M)
    (h : ∀ x, f x = g x) :
    LinearMap.trace R M f = LinearMap.trace R M g := by
  have hfg : f = g := by
    ext x
    exact h x
  simpa [hfg]