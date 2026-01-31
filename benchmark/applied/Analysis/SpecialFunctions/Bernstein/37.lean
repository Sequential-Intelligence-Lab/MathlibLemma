import Mathlib

-- 38. Bernstein polynomials form a partition of unity on `[0,1]`
lemma bernstein_partition_of_unity (n : ℕ) :
    ∀ x : unitInterval, (∑ k : Fin (n + 1), bernstein n k x) = 1 := by
  sorry