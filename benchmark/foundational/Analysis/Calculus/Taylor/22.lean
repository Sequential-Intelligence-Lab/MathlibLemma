import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_succ_center (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithinEval f (n + 1) s x₀ x₀ = f x₀ := by
  sorry