import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_zero_at_center
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithinEval f 0 s x₀ x₀ = f x₀ := by
  simpa using
    (taylorWithinEval_zero (f := f) (s := s) (x₀ := x₀) (x := x₀))