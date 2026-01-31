import Mathlib

lemma norm_sq_add_norm_sq_eq_2_real_inner_self_add_sub {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y : E) :
    ‖x‖ ^ 2 + ‖y‖ ^ 2 =
      1 / 2 * (‖x + y‖ ^ 2 + ‖x - y‖ ^ 2) := by
  sorry
