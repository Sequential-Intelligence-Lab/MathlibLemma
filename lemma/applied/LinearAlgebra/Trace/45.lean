import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_endMul_left
    {R : Type*} [Field R]
    {A : Type*} [CommRing A] [Algebra R A]
    [FiniteDimensional R A]
    (a : A) :
    LinearMap.trace R A (Algebra.lmul R A a) =
      Algebra.trace R A a := by
  -- Use the fact that the trace of the left multiplication map is the same as the algebra trace.
  rw [Algebra.trace]
  -- Simplify the expression using the properties of the trace and the linear map.
  <;> simp [LinearMap.trace]
  -- Use the fact that the trace is invariant under a change of basis.
  <;> simp [FiniteDimensional.finrank_eq_card_basis]
  <;> simp [FiniteDimensional.finrank_eq_card_basis]
  <;> simp [FiniteDimensional.finrank_eq_card_basis]