import Mathlib

-- Define the unit interval as a subtype
def I := Set.Icc (0 : ℝ) 1

-- 22. Pointwise convergence of Bernstein approximation for Lipschitz functions with rate
lemma bernsteinApproximation_rate_Lipschitz
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(I, E)) (L : ℝ) (hL : 0 ≤ L)
    (hfLip : ∀ x y, ‖f x - f y‖ ≤ L * dist x y) :
    ∃ C > 0, ∀ n ≥ 1, ∀ x, ‖bernsteinApproximation n f x - f x‖ ≤ C * (1 / Real.sqrt n) := by
  sorry