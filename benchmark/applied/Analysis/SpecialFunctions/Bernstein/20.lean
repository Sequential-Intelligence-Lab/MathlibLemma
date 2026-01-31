import Mathlib

open scoped BigOperators

-- 21. A bound on the third moment of Bernstein distribution
lemma bernstein_third_moment_bound
    (n : ℕ) (x : Set.Icc (0 : ℝ) 1) :
    (∑ k : Fin (n + 1),
        |(x.1 - (k : ℝ) / (n : ℝ) : ℝ)| ^ 3 *
          bernstein n k ⟨x.1, x.2⟩)
      ≤ 1 / Real.sqrt (n + 1) := by
  sorry