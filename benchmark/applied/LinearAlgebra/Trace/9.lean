import Mathlib

lemma LinearMap.trace_pow_succ
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) (n : ℕ) :
    LinearMap.trace R M (f ^ (n + 1)) =
      LinearMap.trace R M (f ∘ₗ f ^ n) := by
  sorry
