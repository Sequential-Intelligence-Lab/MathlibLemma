import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_eq_f_plus_remainder
    (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    f x = taylorWithinEval f n s x₀ x +
      (f x - taylorWithinEval f n s x₀ x) := by
  have h :
      taylorWithinEval f n s x₀ x +
        (f x - taylorWithinEval f n s x₀ x) = f x := by
    abel
  simpa using h.symm