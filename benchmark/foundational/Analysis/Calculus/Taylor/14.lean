import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_add (f g : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval (fun y => f y + g y) n s x₀ x =
      taylorWithinEval f n s x₀ x + taylorWithinEval g n s x₀ x := by
  sorry