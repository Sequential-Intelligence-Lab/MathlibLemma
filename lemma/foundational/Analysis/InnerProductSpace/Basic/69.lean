import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma norm_inner_eq_sqrt_real_inner_self
    {E : Type*} [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y : E) :
    ‖(inner (𝕜 := ℝ) x y : ℝ)‖ = Real.sqrt ((inner (𝕜 := ℝ) x y : ℝ) ^ 2) := by
  -- Simplify the left-hand side using the fact that the norm of a real number is its absolute value.
  simp [norm_eq_abs]
  -- Use the property that the square root of the square of a real number is its absolute value.
  rw [Real.sqrt_sq_eq_abs]
  -- The absolute value of the inner product is the same as the inner product itself since it is a real number.
  <;> simp [abs_of_nonneg]
  -- Since the inner product is a real number, the absolute value is non-negative.
  <;> linarith [inner_self_nonneg x]