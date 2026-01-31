import Mathlib

open scoped BigOperators

-- 87. A lemma about monotonicity of variance with respect to `x` on `[0,1/2]`
lemma variance_monotone_left
    (n : ℕ) (hn : n ≠ 0) :
    Monotone
      (fun x : {x : Set.Icc (0 : ℝ) 1 // (x : ℝ) ≤ (1 / 2 : ℝ)} =>
        ∑ k : Fin (n + 1),
          ((x.1 : ℝ) - (k : ℝ) / (n : ℝ)) ^ 2 *
            (bernsteinPolynomial ℝ n k).eval (x.1 : ℝ)) := by
  sorry