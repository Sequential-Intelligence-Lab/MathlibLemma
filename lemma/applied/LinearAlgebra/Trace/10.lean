import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_pow_mul_comm
    {R : Type*} [CommSemiring R]
    {M : Type*} [AddCommMonoid M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f : M →ₗ[R] M) (n : ℕ) :
    LinearMap.trace R M (f ^ (n + 1)) =
      LinearMap.trace R M (f ^ n * f) := by
  induction n with
  | zero =>
    -- Base case: n = 0
    -- We need to show that trace(f^1) = trace(f^0 * f)
    simp [pow_succ]
  | succ n ih =>
    -- Inductive step: Assume the statement holds for n, prove it for n+1
    simp_all [pow_succ, mul_assoc, mul_comm, mul_left_comm]