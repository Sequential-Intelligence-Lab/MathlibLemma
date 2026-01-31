import Mathlib

lemma real_inner_eq_zero_of_norm_add_sq_eq_norm_sq_add_norm_sq
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    {x y : E} (h : ‖x + y‖ ^ 2 = ‖x‖ ^ 2 + ‖y‖ ^ 2) :
    inner ℝ x y = 0 := by
  sorry