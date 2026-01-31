import Mathlib

-- Use the closed unit interval as `I`
abbrev I := Set.Icc (0 : ℝ) 1

-- 8. Uniform bound on Bernstein approximation in terms of sup norm of `f`
lemma bernsteinApproximation_bound
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(I, E)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ n (x : I), ‖bernsteinApproximation n f x‖ ≤ C * ‖f‖ := by
  sorry