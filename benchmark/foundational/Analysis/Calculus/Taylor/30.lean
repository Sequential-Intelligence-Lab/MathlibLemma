import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_differentiableWithinAt_succ
    {f : ℝ → E} {s : Set ℝ} {x₀ x : ℝ} (n : ℕ) :
    DifferentiableWithinAt ℝ (taylorWithinEval f (n + 1) s x₀) s x := by
  sorry