import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma lineDeriv_const
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    (c : F) (x v : E) :
    lineDeriv ℝ (fun _ : E => c) x v = 0 := by
  -- Simplify the expression using the properties of the constant function and the line derivative definition.
  simp [lineDeriv, div_eq_mul_inv, mul_zero, sub_self, zero_mul, zero_add, zero_sub]
  -- Use the continuity of the constant function to conclude the limit is zero.
  <;> continuity
  <;> simp
  <;> continuity