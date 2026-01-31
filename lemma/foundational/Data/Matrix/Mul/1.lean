import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_eq_sum_mul [Fintype m] [NonUnitalNonAssocSemiring α]
    (v w : m → α) :
    v ⬝ᵥ w = ∑ i, v i * w i := by
  -- Use the definition of the dot product for vectors in a finite-dimensional space.
  simp [dotProduct, mul_comm]
  -- Simplify the expression using the commutativity of multiplication.
  <;> simp [mul_comm]
  -- Normalize the expression to ensure it matches the expected form.
  <;> ring_nf
  -- Simplify the expression again to ensure it matches the expected form.
  <;> simp [mul_comm]
  -- Normalize the expression again to ensure it matches the expected form.
  <;> ring_nf
  -- Simplify the expression one last time to ensure it matches the expected form.
  <;> simp [mul_comm]
  -- Normalize the expression one last time to ensure it matches the expected form.
  <;> ring_nf