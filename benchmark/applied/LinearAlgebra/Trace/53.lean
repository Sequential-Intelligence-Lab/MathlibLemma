import Mathlib

lemma LinearMap.trace_symm_of_bilinearForm
    {R : Type*} [Field R]
    {M : Type*} [AddCommGroup M] [Module R M] [FiniteDimensional R M]
    (B : M ≃ₗ[R] Module.Dual R M)
    (f : M →ₗ[R] M)
    (h : ∀ x y, B (f x) y = B x (f y)) :
    LinearMap.trace R M f =
      LinearMap.trace R M (B.symm.toLinearMap.comp (B.toLinearMap.comp f)) := by
  sorry