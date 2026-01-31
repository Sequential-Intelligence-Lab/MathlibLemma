import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

open PolynomialModule

theorem taylorWithinEval_eq_taylorWithin_eval
    (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f n s x₀ x =
      PolynomialModule.eval x (taylorWithin f n s x₀) := by
  sorry