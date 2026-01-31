import Mathlib

open scoped BigOperators

-- 96. A lemma about Jensen's inequality for Bernstein kernels
lemma bernstein_Jensen
    (φ : ℝ → ℝ)
    (hconv : ConvexOn ℝ (Set.Icc (0 : ℝ) 1) φ)
    (n : ℕ)
    (x : unitInterval) :
    φ (∑ k : Fin (n+1),
        (k : ℝ) / (n+1 : ℝ) *
          bernstein n k x) ≤
    ∑ k : Fin (n+1),
      φ ((k : ℝ) / (n+1 : ℝ)) *
        bernstein n k x := by
  sorry