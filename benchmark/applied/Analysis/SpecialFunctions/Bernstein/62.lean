import Mathlib

open scoped Interval

-- 63. A lemma bounding the Lipschitz constant of Bernstein approximation in terms of that of `f`
lemma bernsteinApproximation_Lipschitz
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(Set.Icc (0 : ℝ) 1, E)) (L : ℝ)
    (hfLip : ∀ x y, ‖f x - f y‖ ≤ L * dist x y) :
    ∀ n, ∃ L', 0 ≤ L' ∧
      ∀ x y, ‖bernsteinApproximation n f x - bernsteinApproximation n f y‖ ≤
        L' * dist x y := by
  sorry