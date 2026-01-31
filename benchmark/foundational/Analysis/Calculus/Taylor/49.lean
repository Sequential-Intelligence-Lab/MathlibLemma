import Mathlib

variable {E : Type _}

/-- Dummy lemma, not proved, just made type-correct. -/
theorem taylorWithinEval_eq_f_minus_remainder
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f n s x₀ x =
      f x - (f x - taylorWithinEval f n s x₀ x) := by
  sorry