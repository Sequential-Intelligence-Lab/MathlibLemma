import Mathlib

open scoped BigOperators
open Real

lemma bernstein_tight
    (x : unitInterval) :
    ∀ ε > 0, ∃ N, ∀ n ≥ N,
      (∑ k : Fin (n+1),
        (if dist ((k : ℝ) / (n : ℝ)) (x : ℝ) ≥ ε then
          bernstein (n : ℕ) (k : ℕ) x
        else 0)) ≤ ε := by
  sorry