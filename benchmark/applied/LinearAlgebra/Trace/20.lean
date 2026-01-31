import Mathlib

open scoped TensorProduct

lemma LinearMap.trace_tensorProduct_eq_mul_finrank
    {R : Type*} [CommRing R]
    {M N : Type*} [AddCommGroup M] [AddCommGroup N]
    [Module R M] [Module R N]
    [Module.Free R M] [Module.Finite R M]
    [Module.Free R N] [Module.Finite R N] :
    LinearMap.trace R (M ⊗[R] N) (LinearMap.id : (M ⊗[R] N) →ₗ[R] (M ⊗[R] N)) =
      (Module.finrank R M : R) * (Module.finrank R N : R) := by
  sorry