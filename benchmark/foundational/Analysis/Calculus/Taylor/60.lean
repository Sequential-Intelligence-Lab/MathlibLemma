import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_linear
    (f : ℝ → E) (s : Set ℝ) (x₀ x : ℝ)
    (hlin : ∀ x, f x = f x₀ + (x - x₀) • derivWithin f s x₀) :
    taylorWithinEval f 1 s x₀ x = f x := by
  sorry