import Mathlib

variable (E : Type*)

theorem taylorWithinEval_eq_f_at_center
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithinEval f n s x₀ x₀ = f x₀ := by
  sorry