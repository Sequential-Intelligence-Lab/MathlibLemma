import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_first_order
    (f : ℝ → E) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f 1 s x₀ x =
      f x₀ + (x - x₀) • derivWithin f s x₀ := by
  sorry