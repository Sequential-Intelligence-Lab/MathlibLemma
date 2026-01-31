import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_eq_f_of_zero_le_order
    (f : ℝ → E) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f 0 s x₀ x = f x₀ := by
  simpa using
    (taylorWithinEval_zero (f := f) (s := s) (x₀ := x₀) (x := x))