import Mathlib

-- 4. Uniform boundedness of all Bernstein basis polynomials for fixed `n`
lemma bernstein_basis_bddAbove (n : ℕ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (k : Fin (n+1)) (x : unitInterval), |bernstein n k x| ≤ C := by
  sorry