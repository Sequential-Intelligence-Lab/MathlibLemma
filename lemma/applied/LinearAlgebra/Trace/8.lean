import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_comp_self
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) :
    LinearMap.trace R M (f ∘ₗ f) =
      LinearMap.trace R M (f * f) := by
  -- Use the fact that the trace is invariant under cyclic permutations of the multiplication.
  rw [LinearMap.trace_mul_comm]
  -- Simplify the expression using the properties of the trace and the given linear map.
  <;> simp [LinearMap.trace]
  <;> rfl