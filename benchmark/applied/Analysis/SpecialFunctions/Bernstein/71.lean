import Mathlib

-- 72. A lemma about extracting convergence rate for polynomials of bounded degree
lemma bernsteinApproximation_polynomial_rate
    (p : Polynomial ℝ) :
    ∃ C > 0, ∀ n ≥ p.natDegree,
      ‖bernsteinApproximation n (p.toContinuousMapOn (Set.Icc (0 : ℝ) 1)) -
         p.toContinuousMapOn (Set.Icc (0 : ℝ) 1)‖ ≤ C / n := by
  sorry