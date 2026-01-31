import Mathlib

lemma LinearMap.trace_conj_conj
    {R : Type*} [CommSemiring R]
    {M N P : Type*} [AddCommMonoid M] [AddCommMonoid N] [AddCommMonoid P]
    [Module R M] [Module R N] [Module R P]
    (e₁ : M ≃ₗ[R] N) (e₂ : N ≃ₗ[R] P) (f : M →ₗ[R] M) :
    LinearMap.trace R M
      (((e₁.trans e₂).trans (e₂.symm.trans e₁.symm)).conj f) =
      LinearMap.trace R M f := by
  sorry