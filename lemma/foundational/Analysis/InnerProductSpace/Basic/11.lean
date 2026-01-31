import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

lemma real_inner_self_ne_zero (x : E) :
    inner ℝ x x ≠ 0 ↔ x ≠ 0 := by
  -- Use the standard equivalence and then take negations
  simpa using (real_inner_self_eq_zero (x := x)).not

lemma real_inner_self_ne_zero' (x : E) :
    inner ℝ x x ≠ 0 ↔ x ≠ 0 := by
  -- Reuse the previous lemma
  simpa using (real_inner_self_ne_zero (x := x))