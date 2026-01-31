import Mathlib

-- 91. A lemma about approximation by Bernstein polynomials in Hölder spaces
lemma bernsteinApproximation_holder
    (α : ℝ) (hα : 0 < α ∧ α ≤ 1)
    (f : C(↑unitInterval, ℝ))
    (hH : ∀ x y, |f x - f y| ≤ dist x y ^ α) :
    ∀ ε > 0, ∃ N, ∀ n ≥ N,
      ‖bernsteinApproximation n f - f‖ < ε := by
  sorry