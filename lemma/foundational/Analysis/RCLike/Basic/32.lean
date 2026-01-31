import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.normSq_mul' (K : Type*) [RCLike K] (z w : K) :
    RCLike.normSq (z * w) = RCLike.normSq z * RCLike.normSq w := by
  -- Use the definition of norm squared for complex numbers
  rw [RCLike.normSq_mul]
  -- Simplify the expression using the property of conjugation
  <;> simp [RCLike.normSq, mul_conj]
  -- Simplify the algebraic expression
  <;> ring
  -- Simplify further using the property of conjugation
  <;> simp [RCLike.normSq, mul_conj]
  -- Final algebraic simplification
  <;> ring