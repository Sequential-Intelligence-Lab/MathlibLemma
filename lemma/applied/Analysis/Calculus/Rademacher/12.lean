import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma lineDeriv_zero_dir
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    (f : E → F) (x : E) :
    lineDeriv ℝ f x 0 = 0 := by
  -- Use the definition of the line derivative to simplify the expression.
  simp [lineDeriv]
  -- Apply the limit definition of the line derivative.
  <;> apply HasDerivAt.lineDeriv
  -- Simplify the expression using the fact that the derivative at zero is zero.
  <;> simp [hasDerivAt_id]
  -- Use the chain rule to show that the derivative of a constant function is zero.
  <;> apply HasDerivAt.const_mul
  -- Simplify the expression to show that the derivative is zero.
  <;> simp