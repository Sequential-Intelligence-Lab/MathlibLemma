import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma inner_neg_right_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) :
    inner ℝ x (-y) = - inner ℝ x y := by
  -- Use the linearity property of the inner product to factor out the scalar multiplication.
  simp [inner_add_right, inner_smul_right, smul_neg, inner_neg_right]
  -- Simplify the expression using the properties of the inner product and scalar multiplication.
  <;> simp_all [inner_add_right, inner_smul_right, smul_neg, inner_neg_right]
  -- Use the ring properties to finalize the simplification.
  <;> ring