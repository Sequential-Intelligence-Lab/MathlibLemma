import Mathlib

-- 76. A lemma about Lipschitz continuity of `x ↦ x^k (1-x)^(n-k)` on `[0,1]`
lemma bernstein_kernel_Lipschitz
    (n k : ℕ) :
    ∃ L : ℝ, 0 ≤ L ∧
      ∀ ⦃x y : ℝ⦄,
        x ∈ Set.Icc (0 : ℝ) 1 →
        y ∈ Set.Icc (0 : ℝ) 1 →
        |(x ^ k * (1 - x) ^ (n - k)) -
         (y ^ k * (1 - y) ^ (n - k))| ≤ L * |x - y| := by
  sorry