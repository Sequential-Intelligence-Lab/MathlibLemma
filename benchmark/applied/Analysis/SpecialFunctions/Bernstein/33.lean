import Mathlib

open scoped BigOperators

lemma bernstein_sum_compl_le_variance
    (n : ℕ) (x : ℝ) (δ : ℝ) (hδ : 0 < δ) :
    (∑ k ∈ ({k : Fin (n+1) |
        dist ((↑k : ℝ) / (n : ℝ)) x ≥ δ} : Finset (Fin (n+1))),
      (bernsteinPolynomial ℝ n k).eval x) ≤
    (∑ k : Fin (n+1),
      (dist ((↑k : ℝ) / (n : ℝ)) x / δ) ^ 2 *
        (bernsteinPolynomial ℝ n k).eval x) := by
  sorry