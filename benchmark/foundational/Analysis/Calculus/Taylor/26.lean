import Mathlib

open scoped BigOperators
open Polynomial

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_polynomialLike
    (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f n s x₀ x =
      ∑ k ∈ Finset.range (n + 1),
        (Polynomial.eval x ((Polynomial.X : Polynomial ℝ) - Polynomial.C x₀) ^ k) •
          taylorCoeffWithin f k s x₀ := by
  sorry