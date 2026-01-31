import Mathlib

open scoped BigOperators
open Finset

-- 88. A lemma about maximal variance at `x = 1/2`
lemma variance_max_at_half
    (n : ℕ) (hn : n ≠ 0) :
    ∀ x : Set.Icc (0 : ℝ) 1,
      (∑ k : Fin (n+1),
        ((x - (k : ℝ) / (n : ℝ)) ^ 2) *
          bernstein (n : ℕ) k x) ≤
      (∑ k : Fin (n+1),
        (((1/2 : ℝ) - (k : ℝ) / (n : ℝ)) ^ 2) *
          bernstein (n : ℕ) k
            ⟨(1/2 : ℝ), by
              constructor <;> norm_num⟩) := by
  sorry