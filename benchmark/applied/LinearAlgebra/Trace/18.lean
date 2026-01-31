import Mathlib

open scoped TensorProduct

lemma LinearMap.trace_tensor_id
    {R : Type*} [CommRing R]
    {M N : Type*} [AddCommGroup M] [AddCommGroup N]
    [Module R M] [Module R N]
    [Module.Free R M] [Module.Finite R M]
    [Module.Free R N] [Module.Finite R N]
    (f : M →ₗ[R] M) :
    LinearMap.trace R (M ⊗[R] N)
      (TensorProduct.map f (LinearMap.id)) =
      (LinearMap.trace R M f) *
        (LinearMap.trace R N (LinearMap.id : N →ₗ[R] N)) := by
  sorry