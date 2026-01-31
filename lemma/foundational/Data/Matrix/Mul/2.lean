import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_fin_two [NonUnitalNonAssocSemiring α] (v w : Fin 2 → α) :
    v ⬝ᵥ w = v 0 * w 0 + v 1 * w 1 := by
  -- Use the general definition of the dot product for vectors in Fin 2
  simp [Fin.sum_univ_succ, mul_add, mul_comm, mul_left_comm, mul_assoc]
  -- Simplify the expression using commutativity and associativity of multiplication
  <;> simp [Fin.sum_univ_succ, mul_add, mul_comm, mul_left_comm, mul_assoc]
  -- Use the ring tactic to simplify the expression further
  <;> ring
  -- Use linarith to verify the final simplified expression
  <;> linarith