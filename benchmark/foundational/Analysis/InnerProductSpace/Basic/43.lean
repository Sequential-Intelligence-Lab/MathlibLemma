import Mathlib

variable {E : Type _}

lemma norm_sq_eq_inner_self_complex
    [NormedAddCommGroup E] [InnerProductSpace ℂ E] (x : E) :
    (‖x‖ : ℂ) ^ 2 = inner ℂ x x := by
  sorry