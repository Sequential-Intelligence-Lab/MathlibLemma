import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem LinearMap.trace_comp_conj
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M]
    (e : M ≃ₗ[R] M) (f g : M →ₗ[R] M) :
    LinearMap.trace R M (e.conj (f ∘ₗ g)) =
      LinearMap.trace R M ((e.conj f) ∘ₗ (e.conj g)) := by 
  have h1 : e.conj (f ∘ₗ g) = (e.conj f) ∘ₗ (e.conj g) := by
    ext x
    simp [LinearEquiv.conj_apply, LinearMap.comp_apply, e.apply_symm_apply]
  rw [h1]