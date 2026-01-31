import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma inner_sub_right_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    inner ℝ x (y - z) = inner ℝ x y - inner ℝ x z := by
  -- Express the difference as a linear combination
  rw [sub_eq_add_neg]
  -- Apply the linearity of the inner product in the second argument
  simp [inner_add_right, inner_smul_right, mul_comm]
  -- Simplify the expression using algebraic properties
  <;> ring