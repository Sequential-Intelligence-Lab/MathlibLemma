import Mathlib

open scoped Real

-- 5. Uniform equicontinuity of the set `{bernstein n ν | ν ≤ n}`
lemma bernstein_equicontinuous_family (n : ℕ) :
    ∀ ε > 0, ∃ δ > 0, ∀ ⦃x y : unitInterval⦄,
      dist x y < δ →
        ∀ k : Fin (n+1),
          |(bernstein n k x : ℝ) - bernstein n k y| < ε := by
  sorry