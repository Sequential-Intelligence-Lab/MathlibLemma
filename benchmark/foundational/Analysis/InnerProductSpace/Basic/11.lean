import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

lemma real_inner_self_ne_zero (x : E) :
    inner ℝ x x ≠ 0 ↔ x ≠ 0 := by
  sorry

lemma real_inner_self_ne_zero' (x : E) :
    inner ℝ x x ≠ 0 ↔ x ≠ 0 := by
  sorry