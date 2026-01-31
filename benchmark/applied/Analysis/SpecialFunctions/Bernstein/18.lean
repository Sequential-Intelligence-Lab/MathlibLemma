import Mathlib

-- 19. A version of `variance` identity for general `x ∈ [0,1]` as real numbers
lemma bernstein_variance_real (n : ℕ) (hn : n ≠ 0) (x : ℝ)
    (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    (∑ k : Fin (n + 1),
        (x - (k : ℝ) / n) ^ 2 *
          ((n.choose k : ℝ) * x ^ (k : ℕ) * (1 - x) ^ (n - k))) =
      x * (1 - x) / n := by
  sorry
