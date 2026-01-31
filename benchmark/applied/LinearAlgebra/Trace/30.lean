import Mathlib

lemma LinearMap.trace_comp_conj
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M]
    (e : M ≃ₗ[R] M) (f g : M →ₗ[R] M) :
    LinearMap.trace R M (e.conj (f ∘ₗ g)) =
      LinearMap.trace R M ((e.conj f) ∘ₗ (e.conj g)) := by
  sorry
