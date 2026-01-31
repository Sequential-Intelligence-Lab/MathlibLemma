import Mathlib

open scoped BigOperators

lemma LinearMap.trace_algHom_mul
    {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]
    [Fintype A] [Module.Finite R A]
    (f g : A →ₐ[R] A) :
    LinearMap.trace R A (f.toLinearMap ∘ₗ g.toLinearMap) =
      LinearMap.trace R A (g.toLinearMap ∘ₗ f.toLinearMap) := by
  sorry