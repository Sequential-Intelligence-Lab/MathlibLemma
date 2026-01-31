import Mathlib

-- 98. A lemma relating Bernstein polynomials to binomial distribution
lemma bernstein_as_binomial_prob
    (n k : ℕ) (x : unitInterval) :
    bernstein n k x =
      (Nat.choose n k : ℝ) * (x : ℝ) ^ k * (1 - (x : ℝ)) ^ (n - k) := by
  sorry