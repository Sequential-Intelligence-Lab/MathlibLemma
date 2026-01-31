import Mathlib

variable {E : Type _}

theorem taylorWithinEval_differentiableAt_succ
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : ℝ → E} {s : Set ℝ} {x₀ x : ℝ} (n : ℕ) :
    DifferentiableAt ℝ (taylorWithinEval f (n + 1) s x₀) x := by
  sorry