import Mathlib

open Polynomial

lemma integral_polynomial (a b : ℝ) (p : Polynomial ℝ) :
    ∃ F : ℝ → ℝ, (∫ x in a..b, p.eval x) = F b - F a := by
  sorry