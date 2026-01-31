import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_zero (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithinEval f 0 s x₀ x₀ = f x₀ := by
  sorry