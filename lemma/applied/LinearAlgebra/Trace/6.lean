import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_conj'_id
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M ((LinearEquiv.refl R M).conj f) = LinearMap.trace R M f := by
  -- Simplify the expression by using the fact that the identity linear equivalence does not change the linear map.
  simp [LinearEquiv.conj_apply, LinearEquiv.refl_apply, LinearMap.trace_conj]