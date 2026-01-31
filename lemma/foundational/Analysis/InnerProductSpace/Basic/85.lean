import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma inner_add_right_real' {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    inner ℝ x (y + z) = inner ℝ x y + inner ℝ x z := by
  -- Use the property of inner product spaces to split the inner product of a sum into a sum of inner products.
  rw [inner_add_right]
  -- Simplify the expression using the commutativity of addition.
  <;> simp [add_comm, add_left_comm, add_assoc]
  -- Use the property of inner product spaces to split the inner product of a sum into a sum of inner products.
  <;> rw [inner_add_right]
  -- Simplify the expression using the commutativity of addition.
  <;> simp [add_comm, add_left_comm, add_assoc]