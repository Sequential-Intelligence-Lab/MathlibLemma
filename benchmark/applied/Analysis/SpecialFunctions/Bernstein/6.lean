import Mathlib

-- 7. Bernstein approximation preserves convexity for real-valued functions
lemma bernsteinApproximation_convex
    (f : C(Set.Icc (0 : ℝ) 1, ℝ))
    (hf : Convex ℝ (Set.image f Set.univ)) :
    ∀ᶠ n : ℕ in Filter.atTop,
      Convex ℝ (Set.image (bernsteinApproximation n f) Set.univ) := by
  sorry