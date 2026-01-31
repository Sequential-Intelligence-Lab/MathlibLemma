import Mathlib

-- 84. A lemma about differentiability of Bernstein polynomials in `x`
lemma differentiable_bernstein_in_x
    (n k : ℕ) :
    Differentiable ℝ fun x : ℝ =>
      (n.choose k : ℝ) * x ^ k * (1 - x) ^ (n - k) := by
  sorry
