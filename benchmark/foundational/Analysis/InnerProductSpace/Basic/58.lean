import Mathlib

lemma inner_le_norm_mul_norm_of_nonneg_real
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    {x y : E} (h : 0 ≤ inner ℝ x y) :
    inner ℝ x y ≤ ‖x‖ * ‖y‖ := by
  sorry