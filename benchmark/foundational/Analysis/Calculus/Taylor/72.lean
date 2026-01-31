import Mathlib

variable (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_eq_f_of_polynomial
    (p : PolynomialModule ℝ E) (x₀ : ℝ) :
    ∃ n, ∀ x, taylorWithinEval (PolynomialModule.eval · p) n univ x₀ x =
      PolynomialModule.eval x p := by
  sorry