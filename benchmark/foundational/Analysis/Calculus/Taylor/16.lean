import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_neg (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval (fun y => -f y) n s x₀ x =
      - taylorWithinEval f n s x₀ x := by
  sorry