import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_smul (c : ℝ) (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval (fun y => c • f y) n s x₀ x =
      c • taylorWithinEval f n s x₀ x := by
  sorry