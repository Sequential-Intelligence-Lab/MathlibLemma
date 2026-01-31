import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_mul_comm {x y z : ℝ} (hx : 0 ≤ x) :
    x ^ (y * z) = x ^ (z * y) := by
  -- Use the commutativity of multiplication to rewrite the exponents.
  rw [mul_comm]
  -- Simplify the expression using the properties of real power functions.
  <;> simp [rpow_mul]
  -- Normalize the expression using ring operations to ensure equality.
  <;> ring_nf
  -- Simplify the expression further using the properties of real power functions.
  <;> simp [rpow_mul]
  -- Normalize the expression again using ring operations to ensure equality.
  <;> ring_nf
  -- Simplify the expression further using the properties of real power functions.
  <;> simp [rpow_mul]
  -- Normalize the expression again using ring operations to ensure equality.
  <;> ring_nf
  -- Simplify the expression further using the properties of real power functions.
  <;> simp [rpow_mul]
  -- Normalize the expression again using ring operations to ensure equality.
  <;> ring_nf
  -- Simplify the expression further using the properties of real power functions.
  <;> simp [rpow_mul]
  -- Normalize the expression again using ring operations to ensure equality.
  <;> ring_nf
  -- Simplify the expression further using the properties of real power functions.
  <;> simp [rpow_mul]
  -- Normalize the expression again using ring operations to ensure equality.
  <;> ring_nf
  -- Simplify the expression further using the properties of real power functions.
  <;> simp [rpow_mul]